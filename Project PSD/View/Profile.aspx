<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Project_PSD.View.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile Page</title>

    <style>
        .Profile{
            background-color: #ffffff;
            display: flex;
            flex-direction: row;
            justify-content: center;
            width: 100%;

        }

        .Profile .div{
            background-color: #ffffff;
            
            width: 1550px;
            height: 1024px;
            position: relative;
        }

        .Profile .overlap{
            position: absolute;
            width: 1485px;
            height: 103px;
            top: 0;
            left: 0;
            background: linear-gradient(180deg, rgb(34, 193, 195) 0%, rgb(252, 187, 45) 100%);
        }

        .Profile .text-wrapper{
            position: absolute;
            width: 237px;
            top: 18px;
            left: 601px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: 400;
            color: #000000;
            font-size: 50px;
            letter-spacing: 0;
            line-height: normal;
        }

        .Profile .Username-text{
            position: absolute;
            width: 237px;
            top: 145px;
            left: 690px;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-weight: 400;
            color: #000000;
            font-size: 60px;
            letter-spacing: 0;
            line-height: normal;
            white-space: nowrap;
        }

        .Profile .Email-text{
            position: absolute;
            width: 243px;
            top: 325px;
            left: 690px;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-weight: 400;
            color: #000000;
            font-size: 60px;
            letter-spacing: 0;
            line-height: normal;
            white-space: nowrap;
        }

        .Profile .Pass-text{
            position: absolute;
            width: 112px;
            top: 489px;
            left: 690px;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-weight: 400;
            color: #000000;
            font-size: 60px;
            letter-spacing: 0;
            line-height: normal;
            white-space: nowrap;
        }

        .Profile .DOB-text{
            position: absolute;
            width: 213px;
            top: 660px;
            left: 690px;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-weight: 400;
            color: #000000;
            font-size: 60px;
            letter-spacing: 0;
            line-height: normal;
            white-space: nowrap;
        }

        .Profile .rectangle{
           top: 220px;
           position: absolute;
           width: 666px;
           height: 86px;
           left: 690px;
           background-color: #d9d9d9;
           border-radius: 7px;
             font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
             font-weight: 400;
             color: #000000;
             font-size: 60px;
             letter-spacing: 0;
             line-height: normal;
             white-space: nowrap;
            }

        .Profile .rectangle2{
           top: 395px;
           position: absolute;
           width: 666px;
           height: 86px;
           left: 690px;
           background-color: #d9d9d9;
           border-radius: 7px;
                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                font-weight: 400;
                color: #000000;
                font-size: 60px;
                letter-spacing: 0;
                line-height: normal;
                white-space: nowrap;
        }

         .Profile .rectangle3{
            top: 561px;
            position: absolute;
            width: 666px;
            height: 86px;
            left: 690px;
            background-color: #d9d9d9;
            border-radius: 7px;
                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                font-weight: 400;
                color: #000000;
                font-size: 60px;
                letter-spacing: 0;
                line-height: normal;
                white-space: nowrap;
         }

         .Profile .rectangle4{
           top: 730px;
           position: absolute;
           width: 666px;
           height: 86px;
           left: 690px;
           background-color: #d9d9d9;
           border-radius: 7px;
               font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
               font-weight: 400;
               color: #000000;
               font-size: 60px;
               letter-spacing: 0;
               line-height: normal;
               white-space: nowrap;
         }

         .Profile .overal-group{
             position: absolute;
             width: 190px;
             height: 54px;
             top: 498px;
             left: 1166px;
             background-color: #fdbb2d;
             border-radius: 5px;
             font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
             font-weight: 400;
             font-size: 20px;
         }

         /*.Profile .UpdatePass-text{
             width: 163px;
             top: 11px;
             left: 13px;
             color: #000000;
             font-size: 25px;
             white-space: nowrap;
             position: absolute;
             font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
             font-weight: 400;
             line-height: normal;
         }*/

         .Profile .BtnUpdate{
             position: absolute;
             width: 258px;
             height: 84px;
             top: 900px;
             left: 385px;
             background-color: #22c1c3;
             border-radius: 5px;
             font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
             font-weight: 400;
             font-size: 30px;
         }

         .Profile .vector{
             position: absolute;
             width: 72px;
             height: 69px;
             top: 125px;
             left: 28px;
         }

         .Profile .img{
             position: absolute;
             width: 440px;
             height: 418px;
             top: 291px;
             left: 100px;
             
         }

         .Profile .line{
             position: absolute;
             width: 1485px;
             height: 3px;
             top: 865px;
             left: 0;
             object-fit: cover;
         }

        body {
            margin: 0px;
            height: 100%;
        }

        .BtnLogout{
              position: absolute;
              width: 258px;
              height: 84px;
              top: 900px;
              left: 850px;
              background-color: #22c1c3;
              border-radius: 5px;
              font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
              font-weight: 400;
              font-size: 30px
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="Profile">
            <div class="div">
                <div class="overlap"><div class="text-wrapper">MakeMeUpzz</div></div>
                <div class="Username-text">Username:</div>
                <div ><asp:TextBox ID="UernameTxt" runat="server" class="rectangle"></asp:TextBox></div>
                <div class="Email-text">Email:</div>
                <div ><asp:TextBox ID="EmailTxt" runat="server" class="rectangle2"></asp:TextBox></div>
                <div class="Pass-text">Password:</div>
                <div ><asp:TextBox ID="PassTxt" runat="server" class="rectangle3"></asp:TextBox></div>
                <div class="DOB-text">Date of Birth:</div>
                <div ><asp:TextBox ID="DOBTxt" runat="server" class="rectangle4"></asp:TextBox></div>
                <div><a href="#" ><asp:Button ID="UpdatePassBtn" runat="server" Text="Update Password" class="overal-group"/></a></div>
                <a href="Home.aspx"><img class="vector" src="../Img/Vector.png" /></a>
                <img class="img" src="../Img/Ptofile.png" />
                <img class="line" src="../Img/Line 9.png" />
                <div  ><div ><asp:Button ID="UpdateProfileBtn" runat="server" Text="Update Profile" class="BtnUpdate" /></div></div>
                <div  ><div ><asp:Button ID="LogoutBtn" runat="server" Text="Log Out" class="BtnLogout" /></div></div>

            </div>
        </div>
    </form>
</body>
</html>
