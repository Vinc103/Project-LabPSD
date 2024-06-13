<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="BackEnd.ViewAdm.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="Admin Dash.aspx">Back</a>
      <h1>Profile</h1>
    <div class="profile-container">
        <div class="form-group">
            <label for="txtUsername">Username:</label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="PasswordTxt" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <div class="form-group">
            <label for="txtDOB">Date of Birth:</label>
            <asp:TextBox ID="DOBTxt" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <div class="form-group">
             <label for="txtGender">Gender:</label>
             <asp:RadioButton ID="MaleRB" runat="server" text="Male" />
             <asp:RadioButton ID="FemaleRB" runat="server" text="Female"/>
         </div>
        <asp:Button ID="UpdateProfileBtn" runat="server" Text="Update Profile" CssClass="btn-primary" OnClick="UpdateProfileBtn_Click" />
    </div>
    </form>
</body>
</html>
