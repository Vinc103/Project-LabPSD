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
        protected void Page_Load(object sender, EventArgs e)
        {
        
            EcommerceDbEntities db = new EcommerceDbEntities();


            public ConfirmBtn_Click(object sender, EventArgs e)
            {
                string newPassword = newPassTxt.Text;
                string confirmPassword = ConfrimPassTxt.Text;

                if (newPassword == confirmPassword)
                {
                    bool isUpdated = db.UserPassword(User.Identity.Name, newPassword);

                    if (isUpdated)
                    {
                        Response.Redirect("Profile.aspx?message=PasswordUpdated");
                    }
                    else
                    {
                        Response.Write("<script>alert('Error updating password');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Passwords do not match');</script>");
                }
            }

            protected void UpdateProfileBtn_Click(object sender, EventArgs e)
            {
                string email = emailTxt.Text;
                DateTime dob;
                string gender = genderTxt.Text;

                if (DateTime.TryParse(dobTxt.Text, out dob))
                {
                    bool isUpdated = userDataAccess.UpdateProfile(User.Identity.Name, email, dob, gender);

                    if (isUpdated)
                    {
                        Response.Redirect("Profile.aspx?message=ProfileUpdated");
                    }
                    else
                    {
                        Response.Write("<script>alert('Error updating profile');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid Date of Birth format');</script>");
                }
            }
        }
    }

}
    }
}