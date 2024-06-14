<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDash.aspx.cs" Inherits="BackEnd_Admin.ViewAdm.AdminDash" %>

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
                </ul>
            </nav>
        <asp:Button ID="LogoutBtn" runat="server" Text="Logout" OnClick="LogoutBtn_Click" />
        </div>
    </form>
</body>
</html>
