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

            EcommerceDbEntities db = new EcommerceDbEntities();

            EcommerceDB data = GetData(db.TransactionDetails.ToList());

            report.SetDataSource(data);
        }

        private EcommerceDB GetData(List<Transaction_MakeMeupzz> transactions)
        {
            EcommerceDB data = new EcommerceDB();
            var headertable = data.TransactionHeaders;

            foreach(TransactionHeader t in transactions)
            {
                var headerRow = headertable.NewRow();
                headerRow["TransactionId"] = t.TransactionId;
                headerRow["UserID"] = t.User;
                headerRow["TransactionDate"] = t.TransactionDate;
                headerRow["status"] = t.Status;
                headertable.Rows.Add(headerRow);

                foreach(TransactionDetail d in t.TransactionDetails)
                {
                    var headerdetail = headertable.NewRow();
                    headerdetail["DetailId"] = d.DetailId;
                    headerdetail["TransactionId"] = d.TransactionID;
                    headerdetail["MakeupID"] = d.MakeupID;
                    headerdetail["Quantity"] = d.Quantity;
                    headertable.Rows.Add(headerdetail);
                }
            }
            return data;
        }
    }
}