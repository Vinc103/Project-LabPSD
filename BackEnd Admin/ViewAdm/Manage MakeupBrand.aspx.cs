using BackEnd_Admin.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BackEnd_Admin.ViewAdm
{
    public partial class Manage_MakeupBrand : System.Web.UI.Page
    {
        EcommerceDbEntities db = new EcommerceDbEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadMakeupBrands();
            }
        }

        // Load makeup brands into the GridView
        private void LoadMakeupBrands()
        {
            var brands = db.MakeupBrands.ToList();
            MakeupBrandGridView.DataSource = brands;
            MakeupBrandGridView.DataBind();
        }

        // Handle row command events such as Edit and Delete
        protected void MakeupBrandGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int brandId = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "Edit")
            {
                Response.Redirect($"EditMakeupBrand.aspx?BrandId={brandId}");
            }
            else if (e.CommandName == "Delete")
            {
                DeleteMakeupBrand(brandId);
            }
        }

        // Delete makeup brand
        private void DeleteMakeupBrand(int brandId)
        {
            var brand = db.MakeupBrands.FirstOrDefault(b => b.MakeupBrandId == brandId);
            if (brand != null)
            {
                db.MakeupBrands.Remove(brand);
                db.SaveChanges();
                LoadMakeupBrands(); // Reload the GridView data
            }
        }

        // Handle the insert button click
        protected void InsertButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertMakeupBrand.aspx");
        }
    }
}
