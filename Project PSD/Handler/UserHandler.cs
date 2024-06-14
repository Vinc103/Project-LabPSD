using Project_PSD.Model;
using Project_PSD.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static Project_PSD.Repository.MakeMeUpzzRepo;

namespace Project_PSD.Handler
{
    public class UserHandler
    {
        public static EcommerceDbEntities db = new EcommerceDbEntities();

            private readonly UserRepository _userRepository;

        public UserHandler()
            {
            _userRepository = new UserRepository();
            }

            public void RegisterUser(User user)
        {
            _userRepository.InputRegisteredUser(user);
        }

        public User GetUserId(int id)
            {
                return _userRepository.GetUser(id);
            }

            
        }

    }
