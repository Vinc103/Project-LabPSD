using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_PSD.Repository
{
    public class UserRepository
    {
        private static readonly EcommerceDbEntities db = new EcommerceDbEntities();
        
        public int Generateid()
        {
            int lastid = db.Users.OrderByDescending(x => x.UserId).Select(x => x.UserId).FirstOrDefault();
            return lastid + 1;
        }

        public User GetUser(int id)
        {
            return db.Users.Where(x => x.UserId == id).FirstOrDefault();
        }

        public void InputRegisteredUser(User user)
        {
            db.Users.Add(user);
            db.SaveChanges();
        }

        public bool Authentication(string username, string password)
        {
            User user = db.Users.Where(u => u.Username == username && u.UserPassword == password).FirstOrDefault();
            if (user != null)
            {
                return true;
            }
            return false;
        }

        public User GetUserByUsername(string username)
        {
            var user =  db.Users.Where(u => u.Username == username).FirstOrDefault();
            return user;
        }

        public List<User> GetAllUser()
        {
           var user = db.Users.ToList();
            return user;
        }
        public User GetUserById(int id)
        {
            var user = db.Users.Where(u => u.UserId == id).FirstOrDefault();
            return user;
        }
        public void UpdateUser(User user)
        {
            User userToUpdate = db.Users.Where(u => u.UserId == user.UserId).FirstOrDefault();
            userToUpdate.UserEmail = user.UserEmail;
            userToUpdate.UserDOB = user.UserDOB;
            userToUpdate.UserPassword = user.UserPassword;
            userToUpdate.UserGender = user.UserGender;
            db.SaveChanges();
        }
    }
    }
