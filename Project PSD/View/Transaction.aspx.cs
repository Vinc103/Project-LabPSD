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
        
        EcommerceDbEntities db = new EcommerceDbEntities();
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
            var cartItems = db.Carts
                .Where(c => c.UserId == userId)
                .Select(c => new
                {
                    c.Makeup.ProductName,
                    c.Quantity,
                    c.Makeup.Price,
                    Total = c.Quantity * c.Makeup.Price
                }).ToList();

            rptCartItems.DataSource = cartItems;
            rptCartItems.DataBind();
        }

        private void CalculateOrderSummary()
        {
            int userId = GetUserId(); // Implement a method to get the logged-in user's ID
            var cartItems = db.Carts.Where(c => c.UserId == userId);

            decimal subtotal = cartItems.Sum(c => c.Quantity * c.Makeup.Price);
            decimal tax = subtotal * 0.1M; // Example tax rate
            decimal total = subtotal + tax;

            lblSubtotal.Text = subtotal.ToString("C");
            lblTax.Text = tax.ToString("C");
            lblTotal.Text = total.ToString("C");
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            int userId = GetUserId(); // Implement a method to get the logged-in user's ID
            var cartItems = db.Carts.Where(c => c.UserId == userId).ToList();

            foreach (var item in cartItems)
            {
                // Assuming you have a Transaction table to save completed orders
                var transaction = new Transaction
                {
                    UserId = userId,
                    MakeupId = item.MakeupId,
                    Quantity = item.Quantity,
                    TransactionDate = DateTime.Now
                };
                db.Transactions.Add(transaction);

                // Remove the item from the cart
                db.Carts.Remove(item);
            }

            db.SaveChanges();
            Response.Redirect("TransactionHistory.aspx"); // Redirect to a transaction history page
        }

        private int GetUserId()
        {
            // Dummy method for getting the user ID. Replace with your actual logic.
            return 1;
        }
    }

