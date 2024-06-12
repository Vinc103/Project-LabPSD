using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static Project_PSD.Repository.MakeMeUpzzRepo;

namespace Project_PSD.Handler
{

    public class CartHandler
    {
        IRepository<Cart> _cartRepository;

        public CartHandler(IRepository<Cart> cartRepository)
        {
            _cartRepository = cartRepository;
        }

        public IEnumerable<Cart> GetAllCarts()
        {
            return _cartRepository.GetAll();
        }

        public Cart GetCart(int id)
        {
            return _cartRepository.Get(id);
        }

        public void AddCart(Cart cart)
        {
            _cartRepository.Add(cart);
        }

        public void UpdateCart(Cart cart)
        {
            _cartRepository.Update(cart);
        }

        public void DeleteCart(int id)
        {
            var cart = _cartRepository.Get(id);
            if (cart != null)
            {
                _cartRepository.Delete(cart);
            }
        }
    }

}