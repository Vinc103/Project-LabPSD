using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_PSD.View
{
    public partial class Update_Password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EcommerceDbEntities db = new EcommerceDbEntities()
        }

        protected void ConfirmBtn_Click(object sender, EventArgs e)
        {
            string newPassword = newPassTxt.Text;
            string confirmPassword = ConfrimPassTxt.Text;

            if (newPassword == confirmPassword)
            {
                // Call the method to update the password
                bool isUpdated = UpdatePassword(User.Identity.Name, newPassword);

                if (isUpdated)
                {
                    // Password updated successfully
                    Response.Redirect("Profile.aspx?message=PasswordUpdated");
                }
                else
                {
                    // Show error message
                    Response.Write("<script>alert('Error updating password');</script>");
                }
            }
            else
            {
                // Show error message
                Response.Write("<script>alert('Passwords do not match');</script>");
            }
        }

        private bool UpdatePassword(string username, string newPassword)
        {
          
            try
            {
                // Assuming you have a method in your data access layer to update the password
                // Example: UserDataAccess.UpdatePassword(username, newPassword);

                // For demonstration purposes, we assume the update is always successful
                return true;
            }
            catch (Exception ex)
            {
                // Log the exception (ex) if needed
                return false;
            }
        }

        protected void ConfirmBtn_Click1(object sender, EventArgs e)
        {

        }
    }
}