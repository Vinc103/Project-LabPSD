using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_PSD.View
{
    public partial class Profile : System.Web.UI.Page
    {
        EcommerceDbEntities db = new EcommerceDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load user profile information
                LoadUserProfile();
            }
        }

        private void LoadUserProfile()
        {
            string username = User.Identity.Name; // Assuming the username is the identity name
            var user = db.Users.FirstOrDefault(u => u.Username == username);

            if (user != null)
            {
                EmailTxt.Text = user.UserEmail;
                DOBTxt.Text = user.UserDOB?.ToString("yyyy-MM-dd");
            }
        }

        protected void LogoutBtn_Click(object sender, EventArgs e)
        {
            // Implement logout functionality
            // For example:
            // FormsAuthentication.SignOut();
            // Response.Redirect("Login.aspx");
        }

        protected void UpdateProfileBtn_Click(object sender, EventArgs e)
        {
            string username = User.Identity.Name; // Assuming the username is the identity name
            var user = db.Users.FirstOrDefault(u => u.Username == username);

            if (user != null)
            {
                user.UserEmail = EmailTxt.Text;
                DateTime dob;
                if (DateTime.TryParse(DOBTxt.Text, out dob))
                {
                    user.UserDOB = dob;
                }

                db.SaveChanges();
                Response.Redirect("Profile.aspx?message=ProfileUpdated");
            }
            else
            {
                Response.Write("<script>alert('User not found');</script>");
            }
        }

        protected void UpdatePassBtn_Click(object sender, EventArgs e)
        {
            string username = User.Identity.Name; // Assuming the username is the identity name
            var user = db.Users.FirstOrDefault(u => u.Username == username);

            if (user != null)
            {
                string newPassword = UpdatePassBtn.Text;
 
                if(UpdatePassBtn != null)
                {
                    user.UserPassword = newPassword; // Hash the password before saving in production
                    db.SaveChanges();
                    Response.Redirect("Profile.aspx?message=PasswordUpdated");
                }
                else
                {
                    Response.Write("<script>alert('Passwords do not match');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('User not found');</script>");
            }
        }
    }
}