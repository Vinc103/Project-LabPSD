using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static Project_PSD.Repository.MakeMeUpzzRepo;

namespace Project_PSD.Handler
{
    public class TransactionDetailHandler
    {
        EcommerceDbEntities db = new EcommerceDbEntities();
        private readonly IRepository<TransactionDetail> _transactionDetailRepository;

        public TransactionDetailHandler(IRepository<TransactionDetail> transactionDetailRepository)
        {
            _transactionDetailRepository = transactionDetailRepository;
        }

        public IEnumerable<TransactionDetail> GetAllTransactionDetails()
        {
            return _transactionDetailRepository.GetAll();
        }

        public TransactionDetail GetTransactionDetail(int id)
        {
            return _transactionDetailRepository.Get(id);
        }

        public void AddTransactionDetail(TransactionDetail transactionDetail)
        {
            _transactionDetailRepository.Add(transactionDetail);
        }

        public void UpdateTransactionDetail(TransactionDetail transactionDetail)
        {
            _transactionDetailRepository.Update(transactionDetail);
        }

        public void DeleteTransactionDetail(int id)
        {
            var transactionDetail = _transactionDetailRepository.Get(id);
            if (transactionDetail != null)
            {
                _transactionDetailRepository.Delete(transactionDetail);
            }
        }
    }
} 