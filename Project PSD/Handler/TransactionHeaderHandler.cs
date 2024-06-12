using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static Project_PSD.Repository.MakeMeUpzzRepo;

namespace Project_PSD.Handler
{
    public class TransactionHeaderHandler
    {
        private readonly IRepository<TransactionHeader> _transactionHeaderRepository;

        public TransactionHeaderHandler(IRepository<TransactionHeader> transactionHeaderRepository)
        {
            _transactionHeaderRepository = transactionHeaderRepository;
        }

        public IEnumerable<TransactionHeader> GetAllTransactionHeaders()
        {
            return _transactionHeaderRepository.GetAll();
        }

        public TransactionHeader GetTransactionHeader(int id)
        {
            return _transactionHeaderRepository.Get(id);
        }

        public void AddTransactionHeader(TransactionHeader transactionHeader)
        {
            _transactionHeaderRepository.Add(transactionHeader);
        }

        public void UpdateTransactionHeader(TransactionHeader transactionHeader)
        {
            _transactionHeaderRepository.Update(transactionHeader);
        }

        public void DeleteTransactionHeader(int id)
        {
            var transactionHeader = _transactionHeaderRepository.Get(id);
            if (transactionHeader != null)
            {
                _transactionHeaderRepository.Delete(transactionHeader);
            }
        }
    }
}