using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_PSD.View
{
    public partial class Product : System.Web.UI.Page
    {
        public static EcommerceDbEntities db = new EcommerceDbEntities();

            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    LoadProducts();
                }
            }

            private void LoadProducts()
            {
                var products = db.Makeups.Select(p => new
                {
                    p.MakeupName,
                    p.MakeupPrice,
                    p.MakeupWeight,
                    p.MakeupTypeID,
                    p.MakeupBrandID
                }).ToList();

                rptProducts.DataSource = products;
                rptProducts.DataBind();
            }

            protected void rptProducts_ItemCommand(object source, RepeaterCommandEventArgs e)
            {
                if (e.CommandName == "BuyNow")
                {
                    int productId = Convert.ToInt32(e.CommandArgument);
                    // Logic to add the product to the cart
                    // Response.Redirect("Cart.aspx?productId=" + productId);
                }
                else if (e.CommandName == "Details")
                {
                    int productId = Convert.ToInt32(e.CommandArgument);
                    // Logic to redirect to the product details page
                    // Response.Redirect("ProductDetails.aspx?productId=" + productId);
                }
            }
        }
    }