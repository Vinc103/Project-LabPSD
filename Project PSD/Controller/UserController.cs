
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using Project_PSD.Model;

namespace Project_PSD.Controller
{
    public class UserController
    {
        public static String CheckUser(string username)
        {
            String response = "";
            if (string.IsNullOrEmpty(username))
            {
                response = "Username must be filled";
            }
            else if(username.Length < 5|| username.Length > 15)
            {
                response = "Username must be more than 5 characters but not more 15 characters";
            }
            return response;
        }

        public static String CheckEmail(string email)
        {
            String response = "";
            if (string.IsNullOrEmpty(email))
            {
                response = "Email must be filled";
            }
            else if (!email.Contains("@") || !email.Contains(".com"))
            {
                response = "Email must contain '@' and '.com'";
            }
            return response;
        }

        public static String CheckPassword(string password)
        {
            String response = "";
            if (string.IsNullOrEmpty(password))
            {
                response = "Password must be filled";
            }
            return response;
        }

        public static String CheckConfirmPassword(string password, string confirmPassword)
        {
            String response = "";
            if (string.IsNullOrEmpty(confirmPassword))
            {
                response = "Confirm Password must be filled";
            }
            else if (!confirmPassword.Equals(password))
            {
                response = "Confirm Password must be same with Password";
            }
            return response;
        }

        public static String CheckDOB(DateTime dob)
        {
            String response = "";
            if (dob == null)
            {
                response = "Date of Birth must be filled";
            }
            return response;
        }

        public static String CheckGender(bool genderfemale, bool gendermale)
        {
            String response = "";
            if (!genderfemale && !gendermale)
            {
                response = "Gender must be choosen";
            }
            return response;
        }

    }
}