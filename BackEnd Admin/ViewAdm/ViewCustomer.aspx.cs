using BackEnd_Admin.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BackEnd_Admin.ViewAdm
{
    public partial class ViewCustomer : System.Web.UI.Page
    {
        EcommerceDbEntities db = new EcommerceDbEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCustomers();
            }
        }

        // Load customers into the GridView
        private void LoadCustomers()
        {
            var customers = db.Users.ToList();
            GridView1.DataSource = customers;
            GridView1.DataBind();
        }
    }
}