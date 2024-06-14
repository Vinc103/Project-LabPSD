using BackEnd_Admin.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BackEnd_Admin.ViewAdm
{
    public partial class Manage_MakeupType : System.Web.UI.Page
    {
        EcommerceDbEntities db = new EcommerceDbEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadMakeupTypes();
            }
        }

        // Load makeup types into the GridView
        private void LoadMakeupTypes()
        {
            var types = db.MakeupTypes.ToList();
            MakeupTypeGridView.DataSource = types;
            MakeupTypeGridView.DataBind();
        }

        // Handle row command events such as Edit and Delete
        protected void MakeupTypeGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int typeId = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "Edit")
            {
                Response.Redirect($"EditMakeupType.aspx?TypeId={typeId}");
            }
            else if (e.CommandName == "Delete")
            {
                DeleteMakeupType(typeId);
            }
        }

        // Delete makeup type
        private void DeleteMakeupType(int typeId)
        {
            var type = db.MakeupTypes.FirstOrDefault(t => t.MakeupTypeId == typeId);
            if (type != null)
            {
                db.MakeupTypes.Remove(type);
                db.SaveChanges();
                LoadMakeupTypes(); // Reload the GridView data
            }
        }

        // Handle the insert button click
        protected void InsertButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertMakeupType.aspx");
        }
    }
}
