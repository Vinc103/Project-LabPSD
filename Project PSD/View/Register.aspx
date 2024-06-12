<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Project_PSD.View.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Page</title>

    <style>
       .register{
           background-color: rgba(255, 255, 255, 1);
           display: flex;
           flex-direction: row;
           justify-content: center;
           width: 100%;
       }

       .register .div{
          background-color: rgba(255, 255, 255, 1);
          background: linear-gradient(180deg, rgb(147.35, 203.62, 204.33) 0%, rgb(253, 187, 45) 100%);
          width: 1500px;
          height: 765px;
          position: relative;
       }

       .register .text-wrapper{
           position: absolute;
           width: 314px;
           top: 255px;
           left: 80px;
           font-family: "Khand-Regular", Helvetica;
           font-weight: 400;
           color: #000000;
           font-size: 70px;
           letter-spacing: 0;
           line-height: normal;
       }

       .register .text-wrapper2{
           position: absolute;
           width: 638px;
           top: 355px;
           left: 82px;
           font-family: "Khand-Regular", Helvetica;
           font-weight: 400;
           color: #000000;
           font-size: 60px;
           letter-spacing: 0;
           line-height: normal;
       }

       .register .overlap{
           position: absolute;
            width: 563px;
            height: 690px;
            top: 40px;
            left: 794px;
            border-radius: 0;
            border: 0px solid #000000;
            background-image: url(https://c.animaapp.com/bJhGzzJw/img/rectangle-1.png);
            background-size: 100% 100%;
       }

       .register .group{
           position: absolute;
           width: 486px;
           height: 57px;
           top: 20px;
           left: 36px;
       }

       .register .overlap-group{
           position: absolute;
           top: 7px;
           left: 10px;
           font-family: "Geo-Regular", Helvetica;
           font-weight: 400;
           color: #000000;
           font-size: 40px;
           letter-spacing: 0;
           line-height: normal;
           white-space: nowrap;
           position: relative;
           width: 484px;
           height: 57px;
           background-color: #ffffff;
           border-radius: 10px;
       }

       .register .text-wrapper3{
           position: absolute;
           top: 6px;
           left: 10px;
           font-family: "Geo-Regluar", Helvetical;
           font-weight: 400;
           color: #000000;
           font-size: 40px;
           letter-spacing: 0;
           line-height: normal;
           white-space: nowrap;
       }

       .register .overlap-wrapper{
           position: absolute;
           width: 486px;
           height: 57px;
           top: 147px;
           left: 36px;
       }

       .register .overlap-wrapper{
           position: absolute;
           width: 486px;
           height: 57px;
           top: 115px;
           left: 36px;
       }

       .register .text-wrapper4{
           
       }

       
       .register .overlap-group-wrapper{
           position: absolute;
           width: 486px;
           height: 57px;
           top: 210px;
           left: 35px;
       }

       .register .text-wrapper5{
           position: absolute;
           top: 495px;
           left: 80px;
           font-family: "Geo-Regular", Helvetica;
           font-weight: 400;
           color: #000000;
           font-size: 40px;
           letter-spacing: 0;
           line-height: normal;
           white-space: nowrap;
       }

       .register .div-wrapper{
           position: absolute;
           width: 229px;
           height: 59px;
           top: 590px;
           left: 120px;
       }

       .register .overlap2{
           position: relative;
           width: 227px;
           height: 59px;
           background-color: #22c1c3;
           border-radius: 20px;
            position: absolute;
            top: 8px;
            left: 44px;
            font-family: "Geo-Regular", Helvetica;
            font-weight: 400;
            color: #000000;
            font-size: 40px;
            letter-spacing: 0;
            line-height: normal;
            white-space: nowrap;
       }

       .register .text-wrapper6{
          color: #0047ff;
          text-decoration: underline;
       }

       .register .text-wrapper7{
           position: absolute;
           top: 500px;
           left: 160px;
           font-family: "Geo-Regular", Helvetica;
           font-weight: 400;
           color: #000000;
           font-size: 30px;
           letter-spacing: 0;
           line-height: normal;
           white-space: nowrap;
       }

       .register .group2{
           position: absolute;
           width: 486px;
           height: 57px;
           top: 405px;
           left: 46px;
       }

       .register .group3{
           position: absolute;
           width: 486px;
           height: 57px;
           top: 305px;
           left: 36px;
       }

       .register .overlap-group2{
           position: absolute;
           top: 5px;
           left: 2px;
           font-family: "Geo-Regular", Helvetica;
           font-weight: 400;
           color: #000000;
           font-size: 40px;
           letter-spacing: 0;
           line-height: normal;
           white-space: nowrap;
           position: relative;
           width: 484px;
           height: 57px;
           background-color: #ffffff;
           border-radius: 10px;
       }
       
       .register .if-have-a-account{
           position: absolute;
           top: 510px;
           left: 90px;
           font-family: "Geo-Regular", Helvetica;
           font-weight: 400;
           color: transparent;
           font-size: 35px;
           letter-spacing: 0;
           line-height: normal;
           white-space: nowrap;
       }

       .register .span{
           color: #000000;
       }
       body {
          margin: 0px;
          height: 100%;
       }

       
       .ErrorMessage1{
        position: absolute;
        top: 70px;
        left: 12px;
        font: 400;
        font-size: 20px;
        }

       .ErrorMessage2{
         position: absolute;
         top: 70px;
         left: 12px;
         font: 400;
         font-size: 20px;
        }

       .ErrorMessage3{
          position: absolute;
          top: 70px;
          left: 12px;
          font: 400;
          font-size: 20px;
        }

       .ErrorMessage4{
           position: absolute;
           top: 70px;
           left: 12px;
           font: 400;
           font-size: 20px;
       }

       .ErrorMessage5{
           position: absolute;
           top: 70px;
           left: 12px;
           font: 400;
           font-size: 20px;
         }

    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div class="register">
            <div class="div">
                <div class="text-wrapper">MakeMeUpzz</div>
                <div class="text-wrapper2">Please Insert the Information</div>
                <div class="overlap">
                    <div class="group">
                        <div>
                            <asp:TextBox ID="UsernameTxt" runat="server" TextMode="SingleLine" class="overlap-group" Text="Username"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ErrorMessageLbl" runat="server" ControlToValidate="UsernameTxt" ErrorMessage="Username is required." CssClass="ErrorMessage1" ForeColor="Red"/>
                        </div>
                    </div>

             <div class="overlap-wrapper">
                 <div>
                     <asp:TextBox ID="EmailTxt" runat="server" TextMode="Email" class="overlap-group" Visible="True" ValidateRequestMode="Inherit" Text="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ControlToValidate="EmailTxt" ErrorMessage="Email is required." CssClass="ErrorMessage2" ForeColor="Red"/>
                 </div>
             </div>
                <div class="overlap-group-wrapper">
                    <div>
                        <asp:TextBox ID="PassTxt" runat="server" TextMode="Password" class="overlap-group" Text="Password" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ControlToValidate="PassTxt" ErrorMessage="Password is required." CssClass="ErrorMessage3" ForeColor="Red"/>
                    </div>
                </div>
                <div class="group3">
                    <div>
                        <asp:TextBox ID="ConfirmPassTxt" runat="server" TextMode="Password" Text="Confirmation Password" class="overlap-group" >Confirmation Password</asp:TextBox>
                    <asp:RequiredFieldValidator ID="ConfirmPasswordValidator" runat="server" ControlToValidate="ConfirmPassTxt" ErrorMessage="Confirmation Password is required." CssClass="ErrorMessage4" ForeColor="Red"/>
                    <asp:CompareValidator ID="CompareValidator" runat="server" ControlToValidate="ConfirmPassTxt" ControlToCompare="PassTxt" ErrorMessage="Passwords do not match." CssClass="ErrorMessage4" ForeColor="Red"/>
                    </div>
                    </div>
                <div class="group2">
                    <div>
                     <asp:TextBox ID="DOBTxt" runat="server" TextMode="Date" class="overlap-group2" ></asp:TextBox></div>
                    <asp:RequiredFieldValidator ID="DOBValidator" runat="server" ControlToValidate="DOBTxt" ErrorMessage="Date of Birth is required." CssClass="ErrorMessage5" ForeColor="Red"/>
                </div>
                  <div class="text-wrapper7">
                    <asp:RadioButton ID="MaleRB" runat="server" Text="Male" GroupName="gender" />
                      <asp:RadioButton ID="FemaleRB" runat="server" Text="Female" GroupName="gender"  />
                   </div>
                    <p class="if-have-a-account">
                        <span class="span">if have a account </span> 
                    <asp:HyperLink ID="LoginLink" runat="server" NavigateUrl="Login.aspx"> Login </asp:HyperLink>
                </p>
                    <%--Jadi Button--%>
                <div class="div-wrapper">
                     <asp:Button ID="RegBtn" runat="server" Text="Register" class="overlap2" PostBackUrl="~/View/Login.aspx"/>
                  </div>
              </div>
           </div>
       </div>
    </form>
</body>
</html>
