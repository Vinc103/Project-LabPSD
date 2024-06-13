using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_PSD.View
{
    public partial class Register : System.Web.UI.Page
    {
        public static EcommerceDbEntities db = new EcommerceDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/View/Home.aspx");
            }
        }

        protected void RegBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string username = UsernameTxt.Text;
                string email = EmailTxt.Text;
                string password = PassTxt.Text;
                string confirmPassword = ConfirmPassTxt.Text;
                DateTime dob = DateTime.Parse(DOBTxt.Text);
                string gender = MaleRB.Checked ? "Male" : FemaleRB.Checked ? "Female" : "";

                {
                    // Check if username already exists
                    if (db.Users.Any(u => u.Username == username))
                    {
                        ErrorMessageLbl.Text = "Username already exists. Please choose a different username.";
                        ErrorMessageLbl.Visible = true;
                        return;
                    }

                    // Create and save the new user
                    User newUser = new User
                    {
                        Username = username,
                        UserEmail = email,
                        UserPassword = password, // Consider hashing the password before saving
                        UserDOB = dob,
                        UserGender = gender,
                        UserRole = "Customer" // Default role
                    };

                    db.Users.Add(newUser);
                    db.SaveChanges();

                    ErrorMessageLbl.Visible = false;
                    Response.Redirect("~/View/Login.aspx");
                }
            }
        }
    }
}