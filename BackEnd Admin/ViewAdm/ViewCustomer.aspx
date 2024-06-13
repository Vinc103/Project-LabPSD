<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCustomer.aspx.cs" Inherits="BackEnd_Admin.ViewAdm.ViewCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="Admin Dash.aspx">back</a>
       <h1>View Customers</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
           <Columns>
               <asp:BoundField DataField="UserId" HeaderText="Id" SortExpression="UserId"></asp:BoundField>
               <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username"></asp:BoundField>
               <asp:BoundField DataField="UserEmail" HeaderText="Email" SortExpression="UserEmail"></asp:BoundField>
               <asp:BoundField DataField="UserPassword" HeaderText="Password" SortExpression="UserPassword"></asp:BoundField>
               <asp:BoundField DataField="UserDOB" HeaderText="Date of Birth" SortExpression="UserDOB"></asp:BoundField>
               <asp:BoundField DataField="UserGender" HeaderText="Gender" SortExpression="UserGender"></asp:BoundField>
           </Columns>

    </asp:GridView>
    </form>
</body>
</html>
