using BackEnd.Model;
using System;
using System.Linq;

namespace BackEnd.ViewAdm
{
    public partial class Profile : System.Web.UI.Page
    {
        EcommerceDbEntities db = new EcommerceDbEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProfile();
            }
        }

        private void LoadProfile()
        {
            // Assuming you have a method to get the current admin ID
            int adminId = GetCurrentAdminId();
            var admin = db.Users.FirstOrDefault(u => u.UserId == adminId);

            if (admin != null)
            {
                txtUsername.Text = admin.Username;
                txtEmail.Text = admin.UserEmail;
                PasswordTxt.Text = admin.UserPassword;
                DOBTxt.Text = admin.UserDOB.HasValue ? admin.UserDOB.Value.ToString("yyyy-MM-dd") : "";
                if (admin.UserGender == "Male")
                {
                    MaleRB.Checked = true;
                }
                else if (admin.UserGender == "Female")
                {
                    FemaleRB.Checked = true;
                }
            }
        }

        protected void UpdateProfileBtn_Click(object sender, EventArgs e)
        {
            int adminId = GetCurrentAdminId();
            var admin = db.Users.FirstOrDefault(u => u.UserId == adminId);

            if (admin != null)
            {
                admin.Username = txtUsername.Text;
                admin.UserEmail = txtEmail.Text;
                admin.UserPassword = PasswordTxt.Text;
                if (DateTime.TryParse(DOBTxt.Text, out DateTime dob))
                {
                    admin.UserDOB = dob;
                }
                admin.UserGender = MaleRB.Checked ? "Male" : FemaleRB.Checked ? "Female" : null;

                db.SaveChanges();

                // Optionally, show a success message
                Response.Write("<script>alert('Profile updated successfully');</script>");
            }
        }

        private int GetCurrentAdminId()
        {
            // Replace with your logic to get the current admin ID
            // This could be from the session, a cookie, or another method
            return 1; // Example admin ID
        }
    }
}