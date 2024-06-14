using BackEnd_Admin.Dataset;
using BackEnd_Admin.Model;
using BackEnd_Admin.Report;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BackEnd_Admin.ViewAdm
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Transaction_MakeMeupzz report = new Transaction_MakeMeupzz();

            CrystalReportViewer1.ReportSource = report;

            using (EcommerceDbEntities db = new EcommerceDbEntities())
            {
                var transactions = db.TransactionHeaders.Include("TransactionDetails").ToList();
                EcommerceDB data = GetData(transactions);
                report.SetDataSource(data);
            }
        }

        private EcommerceDB GetData(List<TransactionHeader> transactions)
        {
            EcommerceDB data = new EcommerceDB();
            var headertable = data.TransactionHeaders;
            var detailtable = data.TransactionDetail;

            foreach (TransactionHeader t in transactions)
            {
                var headerRow = headertable.NewRow();
                headerRow["TransactionId"] = t.TransactionId;
                headerRow["UserID"] = t.UserID;
                headerRow["TransactionDate"] = t.TransactionDate;
                headerRow["status"] = t.Status;
                headertable.Rows.Add(headerRow);

                foreach (TransactionDetail d in t.TransactionDetails)
                {
                    var detailRow = detailtable.NewRow();
                    detailRow["DetailId"] = d.DetailId;
                    detailRow["TransactionId"] = d.TransactionID;
                    detailRow["MakeupID"] = d.MakeupID;
                    detailRow["Quantity"] = d.Quantity;
                    detailtable.Rows.Add(detailRow);
                }
            }
            return data;
        }
    }
}