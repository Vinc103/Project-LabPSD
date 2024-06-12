<%@ Page Language="C#" AutoEventWireup="true" CodeFile="THistory.aspx.cs" Inherits="Project_PSD.View.THistory" %>  

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <style>
 body {
     font-family: Arial, sans-serif;
     margin: 0;
     padding: 0;
     background-color: #f4f4f4;
 }

 .container {
     width: 80%;
     margin: 20px auto auto auto;
     padding: 20px;
     background-color: #fff;
     box-shadow: 0 0 10px rgba(0,0,0,0.1);
 }

 .container .h1{
      text-align: center;
      left: 100px;
     color: #333333;
 }

 .transaction-history table {
     width: 100%;
     border-collapse: collapse;
     margin: 20px 0;
 }

 .transaction-history th, .transaction-history td {
     border: 1px solid #ddd;
     padding: 8px;
     text-align: left;
 }

 .transaction-history th {
     background-color: #f2f2f2;
 }

 .transaction-history a {
     color: #007bff;
     text-decoration: none;
 }

 .transaction-history a:hover {
     text-decoration: underline;
 }

   .overlap{
    position: absolute;
    width: 1500px;
    height: 103px;
    top: 0;
    left: 0;
    background: linear-gradient(180deg, rgb(34, 193, 195) 0%, rgb(252, 187, 45) 100%);
}


 .text-wrapper{
       position: absolute;
       width: 237px;
       top: 18px;
       left: 601px;
       font-family: Arial, Helvetica, sans-serif;
       font-weight: 400;
       color: #000000;
       font-size: 50px;
       letter-spacing: 0;
       line-height: normal;
   }

     .vector{
       position: absolute;
       width: 72px;
       height: 69px;
       top: 125px;
       left: 28px;
       }

     .container {
        width: 80%;
        margin: 155px auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
     </style>

    <title>Transaction History</title>

</head>
<body>
    <form id="form1" runat="server">
         <div class="overlap"><div class="text-wrapper">MakeMeUpzz</div></div>
         <a href="Home.aspx"><img class="vector" src="../Img/Vector.png" /></a>

        <div class="container">
            <h1>Transaction History</h1>
            <div class="transaction-history">
                <asp:Repeater ID="rptTransactionHistory" runat="server">
                    <%--buat Table--%>
                    <HeaderTemplate>
                        <table>
                            <thead>
                                <tr>
                                    <th>Order ID</th>
                                    <th>Order Date</th>
                                    <th>Total Amount</th>
                                    <th>Status</th>
                                    <th>Details</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><a href="Transaction.aspx">View Details</a></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                            </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>
</body>
</html>
