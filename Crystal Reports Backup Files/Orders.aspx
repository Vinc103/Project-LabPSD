<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="BackEnd_Admin.ViewAdm.Orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="Admin Dash.aspx">back</a>
        <h1>Orders</h1>
    <h2>Unhandled Orders</h2>
    <asp:GridView ID="UnhandledOrdersGridView" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="OrderId" HeaderText="Order ID" />
            <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" />
            <asp:BoundField DataField="OrderDate" HeaderText="Order Date" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="HandleButton" runat="server" Text="Handle Order" CommandName="Handle" CommandArgument='<%# Eval("OrderId") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    
    <h2>Handled Orders</h2>
    <asp:GridView ID="HandledOrdersGridView" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="OrderId" HeaderText="Order ID" />
            <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" />
            <asp:BoundField DataField="OrderDate" HeaderText="Order Date" />
            <asp:BoundField DataField="HandledDate" HeaderText="Handled Date" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
