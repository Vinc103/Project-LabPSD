using Project_PSD.Model;
using Project_PSD.Repository;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project_PSD.Handler;
using Project_PSD.Factory;
using Project_PSD.Controller;
using System.Net.NetworkInformation;

namespace Project_PSD.View
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Err.Visible = false;
            }
        }

        protected void RegBtn_Click(object sender, EventArgs e)
        {
            UserRepository userRepository = new UserRepository();

            String response = UserController.CheckUser(UsernameTxt.Text);
            if (!string.IsNullOrEmpty(response))
            {
                ShowError(response);
                return;
            }

            response = UserController.CheckEmail(EmailTxt.Text);
            if (!string.IsNullOrEmpty(response))
            {
                ShowError(response);
                return;
            }

            response = UserController.CheckGender(MaleRB.Checked, FemaleRB.Checked);
            if (!string.IsNullOrEmpty(response))
            {
                ShowError(response);
                return;
            }
            
            response = UserController.CheckDOB(DOBTxt.Text);
            if (!string.IsNullOrEmpty(response))
            {
                ShowError(response);
                return;
            }
            if (!DateTime.TryParse(DOBTxt.Text, out DateTime newDOB))
            {
                ShowError("Invalid Date of Birth");
                return;
            }


            int newId = userRepository.Generateid();
            String newUsername = UsernameTxt.Text;
            String newEmail = EmailTxt.Text;
            String newGender = MaleRB.Checked ? MaleRB.Text : FemaleRB.Text;
            String newRole = "Costumer";
            String newPassword = PassTxt.Text;

            User user = RegUserFactory.Create(newId, newUsername, newEmail, newPassword, newGender, newRole, newDOB);
            userRepository.InputRegisteredUser(user);
            Response.Redirect("~/View/Login.aspx");
        }
        protected void ShowError(string message)
        {
            Err.Text = message;
            Err.Visible = true;
        }


    }
}

        
  