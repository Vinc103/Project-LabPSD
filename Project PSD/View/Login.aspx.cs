using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_PSD.View
{
    public partial class Login : System.Web.UI.Page
    {
      EcommerceDbEntities db = new EcommerceDbEntities();

            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack && Request.Cookies["RememberMe"] != null)
                {
                    string username = Request.Cookies["RememberMe"]["Username"];
                    string password = Request.Cookies["RememberMe"]["Password"];
                    if (ValidateUser(username, password))
                    {
                        // Log the user in automatically
                        Response.Redirect("~/View/Home.aspx");
                    }
                }
                //if (HttpContext.Current.User.Identity.IsAuthenticated)
                //{
                //    Response.Redirect("~/View/Home.aspx");
                //}
        }

            protected void LoginBtn_Click(object sender, EventArgs e)
            {
                try
                {
                    string username = UsernameTxt.Text.Trim();
                    string password = PasswordTxt.Text.Trim();

                    if (ValidateUser(username, password))
                    {
                        if (RememberMeChk.Checked)
                        {
                            HttpCookie rememberMeCookie = new HttpCookie("RememberMe");
                            rememberMeCookie["Username"] = username;
                            rememberMeCookie["Password"] = password;
                            rememberMeCookie.Expires = DateTime.Now.AddDays(7);
                            Response.Cookies.Add(rememberMeCookie);
                        }
                        Response.Redirect("~/View/Home.aspx");
                    }
                    else
                    {
                        ErrorMessageLbl.Text = "Invalid username or password.";
                        ErrorMessageLbl.Visible = true;
                    }
                }
                catch (Exception ex)
                {
                    ErrorMessageLbl.Text = "An error occurred: " + ex.Message;
                    ErrorMessageLbl.Visible = true;
                    // Optionally log the exception here
                }
            }

            private bool ValidateUser(string username, string password)
            {
               EcommerceDbEntities db = new EcommerceDbEntities();
                {
                    var user = db.Users.FirstOrDefault(u => u.Username == username && u.UserPassword == password);
                    return user != null;
                }
            }
        }
    }
