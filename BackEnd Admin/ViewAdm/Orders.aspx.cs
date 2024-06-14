using BackEnd_Admin.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BackEnd_Admin.ViewAdm
{
    public partial class Orders : System.Web.UI.Page
    {
        EcommerceDbEntities db = new EcommerceDbEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadOrders();
            }
        }

        // Load orders into the GridViews
        private void LoadOrders()
        {
            var unhandledOrders = db.TransactionHeaders.Where(o => !o.HandledDate.HasValue).ToList();
            UnhandledOrdersGridView.DataSource = unhandledOrders;
            UnhandledOrdersGridView.DataBind();

            var handledOrders = db.TransactionHeaders.Where(o => o.HandledDate.HasValue).ToList();
            HandledOrdersGridView.DataSource = handledOrders;
            HandledOrdersGridView.DataBind();
        }

        // Handle row command events such as Handle Order
        protected void UnhandledOrdersGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Handle")
            {
                int orderId = Convert.ToInt32(e.CommandArgument);
                HandleOrder(orderId);
            }
        }

        // Handle order
        private void HandleOrder(int orderId)
        {
            var order = db.TransactionHeaders.FirstOrDefault(o => o.OrderId == orderId);
            if (order != null)
            {
                order.HandledDate = DateTime.Now;
                db.SaveChanges();
                LoadOrders(); // Reload the GridView data
            }
        }
    }
}