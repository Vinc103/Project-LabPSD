<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage MakeupBrand.aspx.cs" Inherits="BackEnd_Admin.ViewAdm.Manage_MakeupBrand" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="Admin Dash.aspx">back</a>
         <h1>Manage Makeup Brands</h1>
    <asp:GridView ID="MakeupBrandGridView" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="BrandId" HeaderText="Brand ID" />
            <asp:BoundField DataField="BrandName" HeaderText="Brand Name" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="EditButton" runat="server" Text="Edit" CommandName="Edit" CommandArgument='<%# Eval("BrandId") %>' />
                    <asp:Button ID="DeleteButton" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("BrandId") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:Button ID="InsertButton" runat="server" Text="Insert New Makeup Brand" OnClick="InsertButton_Click" />
    </form>
</body>
</html>
