using Project_PSD.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_PSD.View
{
    public partial class THistory : System.Web.UI.Page
    {
        EcommerceDbEntities db = new EcommerceDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTransactionHistory();
            }
        }

        private void LoadTransactionHistory()
        {
            string connectionString = "your_connection_string";
            string query = "SELECT OrderID, OrderDate, Total, Status FROM Orders WHERE CustomerID = @CustomerID";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@CustomerID", GetCustomerId()); // Replace with actual customer ID retrieval logic
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                rptTransactionHistory.DataSource = reader;
                rptTransactionHistory.DataBind();
            }
        }

        private int GetCustomerId()
        {
            // Replace with logic to retrieve the current logged-in customer's ID
            return 1;
        }
    }
}

