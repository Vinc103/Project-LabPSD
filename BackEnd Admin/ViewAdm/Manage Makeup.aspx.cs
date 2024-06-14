using BackEnd_Admin.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BackEnd_Admin.ViewAdm
{
    public partial class Manage_Makeup : System.Web.UI.Page
    {
            EcommerceDbEntities db = new EcommerceDbEntities();

            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    LoadMakeup();
                }
            }

            private void LoadMakeup()
            {
                var makeups = db.Makeups.ToList();
                MakeupGridView.DataSource = makeups;
                MakeupGridView.DataBind();
            }

            protected void InsertButton_Click(object sender, EventArgs e)
            {
                Response.Redirect("InsertMakeup.aspx");
            }

            protected void MakeupGridView_RowCommand(object sender, GridViewCommandEventArgs e)
            {
                int makeupId = Convert.ToInt32(e.CommandArgument);

                if (e.CommandName == "Edit")
                {
                    Response.Redirect($"UpdateMakeup.aspx?MakeupId={makeupId}");
                }
                else if (e.CommandName == "Delete")
                {
                    var makeup = db.Makeups.FirstOrDefault(m => m.MakeupId == makeupId);
                    if (makeup != null)
                    {
                        db.Makeups.Remove(makeup);
                        db.SaveChanges();
                        LoadMakeup();
                    }
                }
            }
        }
    }