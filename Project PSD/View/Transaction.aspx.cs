using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Project_PSD.View
{

    public partial class Checkout : System.Web.UI.Page
    {

        public static EcommerceDbEntities db = new EcommerceDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCartItems();
                CalculateOrderSummary();
            }
        }

        private void LoadCartItems()
        {

            int userId = GetUserId(); // Implement a method to get the logged-in user's ID
            using (var db = new EcommerceDbEntities())
            {
                var cartItems = db.Carts
                .Where(c => c.UserId == userId)
                .Select(c => new
                {
                    c.Makeup,
                    c.Quantity,
                    c.Makeup.MakeupPrice,
                    Total = c.Quantity * c.Makeup.MakeupPrice
                }).ToList();

                rptCartItems.DataSource = cartItems;
                rptCartItems.DataBind();
            }
        }

        private void CalculateOrderSummary()
        {
            int userId = GetUserId(); // Implement a method to get the logged-in user's ID
            using (var db = new EcommerceDbEntities())
            {
                var cartItems = db.Carts.Where(c => c.UserId == userId);

                decimal subtotal = cartItems.Sum(c => c.Quantity * c.Makeup.MakeupPrice);
                decimal tax = subtotal * 0.1M; // Example tax rate
                decimal total = subtotal + tax;

                lblSubtotal.Text = subtotal.ToString("C");
                lblTax.Text = tax.ToString("C");
                lblTotal.Text = total.ToString("C");
            }
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            int userId = GetUserId(); // Implement a method to get the logged-in user's ID
            var cartItems = db.Carts.Where(c => c.UserId == userId).ToList();
            var TransactionHeader = new TransactionHeader
            {
                UserId = userId,
                TransactionDate = DateTime.Now,
                TransactionDetails = new List<TransactionDetail>() // Initialize the details list
            };


            foreach (var item in cartItems)
            {
                // Assuming you have a Transaction table to save completed orders
                var TransactionDetail = new TransactionDetail
                {

                    MakeupID = item.MakeupId,
                    Quantity = item.Quantity,

                };
                TransactionHeader.TransactionDetails.Add(TransactionDetail);

                // Remove the item from the cart
                db.Carts.Remove(item);
            }

            db.TransactionHeaders.Add(TransactionHeader);
            db.SaveChanges();
            Response.Redirect("TransactionHistory.aspx"); // Redirect to a transaction history page
        }

        private int GetUserId()
        {
            // Dummy method for getting the user ID. Replace with your actual logic.
            return 1;
        }
        protected global::System.Web.UI.WebControls.Repeater rptCartItems; 
        protected global::System.Web.UI.WebControls.Label lblSubtotal; 
        protected global::System.Web.UI.WebControls.Label lblTax; 
        protected global::System.Web.UI.WebControls.Label lblTotal;
    }

}