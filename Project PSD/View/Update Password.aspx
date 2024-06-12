<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update Password.aspx.cs" Inherits="Project_PSD.View.Update_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Password</title>
    
    <style>
    
.Upd-Pass {
  background-color: rgba(255, 255, 255, 1);
  display: flex;
  flex-direction: row;
  justify-content: center;
  width: 100%;
}

.Upd-Pass .div {
  background-color: rgba(255, 255, 255, 1);
  background: linear-gradient(180deg, rgb(147.35, 203.62, 204.33) 0%, rgb(253, 187, 45) 100%);
  width: 1500px;
  height: 765px;
  position: relative;
}

.Upd-Pass .overlap {
  position: absolute;
  width: 574px;
  height: 499px;
  top: 100px;
  left: 792px;
  background-image: url(https://c.animaapp.com/bJhGzzJw/img/rectangle-1.png);
  background-size: 100% 100%;
}

.Upd-Pass .text-wrapper {
  color: #000000;
}

.Upd-Pass .span {
    left: 12px;
  color: #0047ff;
  text-decoration: underline;
}

.Upd-Pass .group {
  position: absolute;
  width: 486px;
  height: 57px;
  top: 92px;
  left: 45px;
}

.Upd-Pass .overlap-group {
  position: absolute;
  width: 490px;
  top: 30px;
  left: 5px;
  font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
  font-weight: 400;
  color: #000000;
  font-size: 40px;
  letter-spacing: 0;
  line-height: normal;
  white-space: nowrap;
  background: #ffffff;
  border-radius: 10px;
}

.Upd-Pass .overlap-group-1{
     position: absolute;
     top: 20px;
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

.Upd-Pass .text-wrapper-2 {
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

.Upd-Pass .overlap-wrapper {
  position: absolute;
  width: 486px;
  height: 57px;
  top: 85px;
  left: 1px;
}

.Upd-Pass .text-wrapper-3 {
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

.Upd-Pass .overlap-group-wrapper {
  position: absolute;
  width: 229px;
  height: 59px;
  top: 280px;
  left: 170px;
}

.Upd-Pass .Confirm-Btn {
  position: relative;
  width: 227px;
  height: 59px;
  background-color: #22c1c3;
  border-radius: 20px;
    font-family: "Khand", Helvetica;
    font-weight: 400;
    color: #000000;
    font-size: 50px;
    top: 230px;
    left: 150px;
}       



.Upd-Pass .Title {
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

.Upd-Pass .Insert-text{
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
    </style>
</head>
   
<body>
    <form id="form1" runat="server">
     <div class="Upd-Pass">
      <div class="div">
        <div class="overlap">
          <div class="group">
            <div><asp:TextBox ID="newPassTxt" runat="server" class="overlap-group">New Password</asp:TextBox></div>
          <div class="overlap-wrapper">
            <div><asp:TextBox ID="ConfrimPassTxt" runat="server" class="overlap-group-1">Confirmation Password</asp:TextBox></div>
          </div>
              <%--Jadi Button--%>
              <a href="Profile.aspx" >
                  <asp:Button ID="ConfirmBtn" runat="server" Text="Confirm" class="Confirm-Btn"/></a>
    </div>
      </div>
      <div class="Title">MakeMeUpzz</div>
      <div class="Insert-text">Please Insert new Password</div>
    </div>
</div>
    </form>
</body>
</html>
