using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_PSD.Factory
{
    public class RegUserFactory
    {
        public static User Create(int id, string username, string email,string gender, string password, string role, DateTime dob)
        {
            User user = new User();
            user.UserId = id;
            user.Username = username;
            user.UserEmail = email;
            user.UserPassword = password;
            user.UserGender = gender;
            user.UserDOB = dob;
            user.UserRole = role;
            return user;
        }
    }
}