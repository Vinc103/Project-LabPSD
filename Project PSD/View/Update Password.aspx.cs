using Project_PSD.Model;
using Project_PSD.Handler;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_PSD.View
{
    public partial class Update_Password : System.Web.UI.Page
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

                //if (user != null)
                //{
                //    EmailTxt.Text = user.UserEmail;
                //    DOBTxt.Text = user.UserDOB?.ToString("yyyy-MM-dd");
                //    genderTxt.Text = user.UserGender;
                //}
            }

            protected void LogoutBtn_Click(object sender, EventArgs e)
            {
                // Clear the session
                Session.Clear();

                // Sign out the user
                FormsAuthentication.SignOut();

                // Redirect to the login page
                Response.Redirect("Login.aspx");
            }

            protected void UpdateProfileBtn_Click(object sender, EventArgs e)
            {
                string username = User.Identity.Name; // Assuming the username is the identity name
                var user = db.Users.FirstOrDefault(u => u.Username == username);

                if (user != null)
                {
                    //user.UserEmail = emailTxt.Text;
                //    DateTime dob;
                //    if (DateTime.TryParse(dobTxt.Text, out dob))
                //    {
                //        user.UserDOB = dob;
                //    }
                //    user.UserGender = genderTxt.Text;

                //    db.SaveChanges();
                //    Response.Redirect("Profile.aspx?message=ProfileUpdated");
                //}
                //else
                //{
                //    Response.Write("<script>alert('User not found');</script>");
                }
            }

            protected void ConfirmBtn_Click1(object sender, EventArgs e)
            {
                string username = User.Identity.Name; // Assuming the username is the identity name
                var user = db.Users.FirstOrDefault(u => u.Username == username);

                if (user != null)
                {
                    string newPassword = newPassTxt.Text;
                    string confirmPassword = ConfrimPassTxt.Text;

                    if (newPassword == confirmPassword)
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
