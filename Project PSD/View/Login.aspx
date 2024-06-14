<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project_PSD.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Login Page</title>

    <style>

.log-in {
  background-color: rgba(255, 255, 255, 1);
  display: flex;
  flex-direction: row;
  justify-content: center;
  width: 100%;
}

.log-in .div {
  background-color: rgba(255, 255, 255, 1);
  background: linear-gradient(180deg, rgb(147.35, 203.62, 204.33) 0%, rgb(253, 187, 45) 100%);
  width: 1500px;
  height: 765px;
  position: relative;
}

.log-in .overlap {
  position: absolute;
  width: 574px;
  height: 499px;
  top: 100px;
  left: 792px;
  background-image: url(https://c.animaapp.com/bJhGzzJw/img/rectangle-1.png);
  background-size: 100% 100%;
}

.log-in .don-t-have-account {
  position: absolute;
  top: 230px;
  left: 30px;
  font-family: "Geo-Regular", Helvetica;
  font-weight: 400;
  color: transparent;
  font-size: 40px;
  letter-spacing: 0;
  line-height: normal;
  white-space: nowrap;
}

.log-in .text-wrapper {
  color: #000000;
}

.log-in .span {
    left: 12px;
  color: #0047ff;
  text-decoration: underline;
}

.log-in .group {
  position: absolute;
  width: 486px;
  height: 57px;
  top: 92px;
  left: 45px;
}

.log-in .overlap-group {
  position: absolute;
  top: 7px;
  left: 5px;
  font-family: "Geo", Helvetica;
  font-weight: 400;
  color: #000000;
  font-size: 40px;
  letter-spacing: 0;
  line-height: normal;
  white-space: nowrap;
  background: #ffffff;
  border-radius: 10px;
}

.log-in .overlap-group-1{
     position: absolute;
     top: 10px;
     left: 5px;
     font-family: "Geo", Helvetica;
     font-weight: 400;
     color: #000000;
     font-size: 40px;
     letter-spacing: 0;
     line-height: normal;
     white-space: nowrap;
     background: #ffffff;
     border-radius: 10px;
}

.log-in .text-wrapper-2 {
  position: absolute;
  top: 6px;
  left: 10px;
  font-family: "Geo", Helvetica;
  font-weight: 400;
  color: #000000;
  font-size: 40px;
  letter-spacing: 0;
  line-height: normal;
  white-space: nowrap;
}

.log-in .overlap-wrapper {
  position: absolute;
  width: 486px;
  height: 57px;
  top: 85px;
  left: 1px;
}

.log-in .text-wrapper-3 {
  position: absolute;
  top: 7px;
  left: 10px;
  font-family: "Geo", Helvetica;
  font-weight: 400;
  color: #000000;
  font-size: 40px;
  letter-spacing: 0;
  line-height: normal;
  white-space: nowrap;
}

.log-in .overlap-group-wrapper {
  position: absolute;
  width: 229px;
  height: 59px;
  top: 280px;
  left: 170px;
}

.log-in .div-wrapper {
  position: relative;
  width: 227px;
  height: 59px;
  right: -145px;
  top: 280px;
  background-color: #22c1c3;
  border-radius: 20px;
  font-family: "Geo", Helvetica;
font-weight: 400;
color: #000000;
font-size: 40px;
}

.log-in .text-wrapper-4 {
  position: absolute;
  top: 8px;
  left: 65px;
  font-family: "Geo", Helvetica;
  font-weight: 400;
  color: #000000;
  font-size: 40px;
  letter-spacing: 0;
  line-height: normal;
  white-space: nowrap;
}

.log-in .text-wrapper-5 {
  position: absolute;
  width: 314px;
  top: 200px;
  left: 93px;
  font-family: "Khand", Helvetica;
  font-weight: 400;
  color: #000000;
  font-size: 70px;
  letter-spacing: 0;
  line-height: normal;
}

.log-in .text-wrapper-6 {
  position: absolute;
  width: 631px;
  top: 280px;
  left: 92px;
  font-family: "Khand", Helvetica;
  font-weight: 400;
  color: #000000;
  font-size: 60px;
  letter-spacing: 0;
  line-height: normal;
}

/*log-in .ellipse{
    position: absolute;
    width: 624px;
    height: 498px;
    bottom: 9px;
    left: -10px;
    background-blend-mode: darken;
    object-fit: cover;
}
*/

body {
  margin: 0px;
  height: 100%;
}
/* a blue color as a generic focus style */
button:focus-visible {
  outline: 2px solid #4a90e2 !important;
  outline: -webkit-focus-ring-color auto 5px !important;
}
a {
  text-decoration: none;
}

.checkbox{
    position: absolute;
    top: 300px;
    left: 200px;
    font-family: "Geo-Regular", Helvetica;
    font-weight: 400;
    color: #000000;
    font-size: 25px;
    letter-spacing: 0;
    line-height: normal;
    white-space: nowrap;
}

.overlap-group2{
    position: absolute;
    top: 155px;
    left: 55px;
}

.overlap-group3{
    position: absolute;
    top: 245px;
    left: 55px;
}

.ErrorMsg{
    position: relative;
    top: 420px;
    left: 90px;
    font-size: 30px;
}
    </style>

</head>
   
<body>
    <form id="form1" runat="server">
              <div class="log-in">
          <div class="div">
            <div class="overlap">
               
              <p class="don-t-have-account">
                <span class="text-wrapper">Don’t have account?</span>  
                <asp:HyperLink ID="RegisterLink" runat="server" NavigateUrl="Register.aspx"> Register </asp:HyperLink>
              </p>

                 <p class="checkbox">
                    <asp:CheckBox ID="RememberMeChk" runat="server" Text="Remember me"/>
                 </p>
                    
              
              <div class="group">
                <div>
                    <asp:TextBox ID="UsernameTxt" runat="server" class="overlap-group" >Username</asp:TextBox>
                    </div>
              <div class="overlap-wrapper">
                    <asp:TextBox ID="PasswordTxt" runat="server" class="overlap-group-1" TextMode="Password" Text="Password" >Password</asp:TextBox>
                  </div>
                      
                  <asp:Button ID="LoginBtn" runat="server" Text="Log In" class="div-wrapper"/>
        </div>
                  <asp:RequiredFieldValidator ID="UsernameRequired" runat="server" class="overlap-group2" ControlToValidate="UsernameTxt" ErrorMessage="Username is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" class="overlap-group3" ControlToValidate="PasswordTxt" ErrorMessage="Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
          <div class="text-wrapper-5">MakeMeUpzz</div>
          <div class="text-wrapper-6">Welcome Guest Please Login!</div>
             <div class="ErrorMsg">
             <asp:Label ID="ErrorMessageLbl" runat="server" ForeColor="Red" Visible="False"></asp:Label>
             </div> 

        </div>
          
    </div>
    </form>
</body>
</html>
