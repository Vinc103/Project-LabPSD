using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_PSD.Model
{
    public class Transaction
    {
        public int TransactionID { get; set; }
        public int UserID { get; set; }
        public DateTime TransactionDate { get; set; }
        public int TotalPrice { get; set; }
        public string PaymentType { get; set; }
        public string PaymentStatus { get; set; }
        public string Address { get; set; }
        public string PostalCode { get; set; }
        public string PhoneNumber { get; set; }
        public string ReceiverName { get; set; }
    }
}