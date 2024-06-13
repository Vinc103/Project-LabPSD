<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin Dash.aspx.cs" Inherits="BackEnd.ViewAdm.Admin_Dash" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>MakeMeUpzz</h1>
        <a>Welcome Admin</a>
       <div>
        <nav>
                <ul>
                    <li><a href="ViewCustomers.aspx">View Customers</a></li>
                    <li><a href="ManageMakeup.aspx">Manage Makeup</a></li>
                    <li><a href="ManageMakeupType.aspx">Manage Makeup Types</a></li>
                    <li><a href="ManageMakeupBrand.aspx">Manage Makeup Brands</a></li>
                    <li><a href="Profile.aspx">Profile</a></li>
                    <li><a href="Orders.aspx">Orders</a></li>
                    <li><a href="Logout.aspx">Logout</a></li>
                </ul>
            </nav>
            <asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server"></asp:ContentPlaceHolder>
        </div>
    </form>
</body>
</html>
