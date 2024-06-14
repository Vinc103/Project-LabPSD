<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage Makeup.aspx.cs" Inherits="BackEnd_Admin.ViewAdm.Manage_Makeup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Makeup</title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="Admin Dash.aspx">back</a>
       <h1>Manage Makeup</h1>
    <asp:GridView ID="MakeupGridView" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="MakeupId" HeaderText="Makeup ID" />
            <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
            <asp:BoundField DataField="Brand" HeaderText="Brand" />
            <asp:BoundField DataField="Type" HeaderText="Type" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="EditButton" runat="server" Text="Edit" CommandName="Edit" CommandArgument='<%# Eval("MakeupId") %>' />
                    <asp:Button ID="DeleteButton" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("MakeupId") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:Button ID="InsertButton" runat="server" Text="Insert New Makeup" OnClick="InsertButton_Click" />
    </form>
</body>
</html>
