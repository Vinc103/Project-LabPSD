<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage MakeupType.aspx.cs" Inherits="BackEnd_Admin.ViewAdm.Manage_MakeupType" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage MakeupType</title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="Admin Dash.aspx">back</a>
        <h1>Manage Makeup Types</h1>
    <asp:GridView ID="MakeupTypeGridView" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="TypeId" HeaderText="Type ID" />
            <asp:BoundField DataField="TypeName" HeaderText="Type Name" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="EditButton" runat="server" Text="Edit" CommandName="Edit" CommandArgument='<%# Eval("TypeId") %>' />
                    <asp:Button ID="DeleteButton" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("TypeId") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:Button ID="InsertButton" runat="server" Text="Insert New Makeup Type" OnClick="InsertButton_Click" />
    </form>
</body>
</html>
