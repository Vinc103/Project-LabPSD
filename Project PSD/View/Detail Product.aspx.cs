using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_PSD.View
{
    public partial class Detail_Product : System.Web.UI.Page
    {
            public static EcommerceDbEntities db = new EcommerceDbEntities();
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    int makeupId;
                    if (int.TryParse(Request.QueryString["MakeupId"], out makeupId))
                    {
                        LoadProductDetails(makeupId);
                    }
                    else
                    {
                        // Handle error if MakeupId is not provided or invalid
                        Response.Redirect("Home.aspx");
                    }
                }
            }

            private void LoadProductDetails(int makeupId)
            {
            using (var db = new EcommerceDbEntities())
            {

            }    
                var product = db.Makeups.FirstOrDefault(p => p.MakeupId == makeupId);
                if (product != null)
                {
                    ProductName.InnerText = product.MakeupName;
                    MakeupPrice.InnerText = $"Rp. {product.MakeupPrice:N0}";
                    ProductDescription.InnerText = product.Description;
                    mainImage.Src = $"../Web Img/{product.Image}";
                }
                else
                {
                    // Handle error if product not found
                    Response.Redirect("Home.aspx");
                }
            }

            protected void AddToCartBtn_Click(object sender, EventArgs e)
            {
                int userId = GetUserId(); // Implement a method to get the logged-in user's ID
                int makeupId = int.Parse(Request.QueryString["MakeupId"]);
                int quantity = int.Parse(QuantityTxt.Text);

                var cartItem = db.Carts.FirstOrDefault(c => c.UserId == userId && c.MakeupId == makeupId);
                if (cartItem != null)
                {
                    cartItem.Quantity += quantity;
                }
                else
                {
                    cartItem = new Cart
                    {
                        UserId = userId,
                        MakeupId = makeupId,
                        Quantity = quantity
                    };
                    db.Carts.Add(cartItem);
                }

                db.SaveChanges();
                Response.Redirect("Cart.aspx"); // Redirect to the cart page
            }

            protected void BuyNowBtn_Click(object sender, EventArgs e)
            {
                AddToCartBtn_Click(sender, e); // Add item to cart
                Response.Redirect("Checkout.aspx"); // Redirect to checkout
            }

            private int GetUserId()
            {
                // Dummy method for getting the user ID. Replace with your actual logic.
                return 1;
            }

        protected global::System.Web.UI.HtmlControls.HtmlGenericControl ProductName; // Ensure this line exists in your code-behind
        protected global::System.Web.UI.HtmlControls.HtmlGenericControl MakeupPrice; // Ensure this line exists in your code-behind
        protected global::System.Web.UI.HtmlControls.HtmlGenericControl ProductDescription; // Ensure this line exists in your code-behind
        protected global::System.Web.UI.HtmlControls.HtmlImage mainImage;
    }
    }