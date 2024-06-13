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

            private readonly IRepository<User> _userRepository;

            public UserHandler(IRepository<User> userRepository)
            {
            _userRepository = userRepository;
            }

            public IEnumerable<User> GetAllUsers()
            {
                return _userRepository.GetAll();
            }

            public User GetUser(int id)
            {
                return _userRepository.Get(id);
            }

            public void AddUser(User user)
            {
                _userRepository.Add(user);
            }

            public void UpdateUser(User user)
            {
                _userRepository.Update(user);
            }

            public void DeleteUser(int id)
            {
                var user = _userRepository.Get(id);
                if (user != null)
                {
                    _userRepository.Delete(user);
                }
            }
        }

    }
