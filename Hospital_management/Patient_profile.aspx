<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patient_profile.aspx.cs" Inherits="Patient_profile" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" >
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="libs/normalize/normalize.css" type="text/css">
    <link rel="stylesheet" href="libs/font-awesome/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/layout.css" type="text/css">
    <link rel="stylesheet" href="css/main.css" type="text/css">
    <link href="HomeStyle.css" rel="stylesheet" type="text/css" >
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 301px
        }
    </style>
</head>
<body  style="background-image:url(background.jpg);width:auto">
    <form id="form1" runat="server">
    
        <div class="container" >
        <div class="header">
        <img src="logo.jpg" style="margin-top:20px;float:left;margin-left:20px"/>
         <h2>Tanim
            </h2>
        <h3>Hospital</h3>
            <asp:Button ID="Button1" runat="server" Text="Log Out" Style="float:right;margin-top:50px;margin-right:100px" OnClick="Button1_Click" />
       </div>

        
        <div class="sidebar" >
            <div class="sidebar-links well">
                <ul class="nav">
                    
                    
                    <li><a href="#view" class="active"><i></i>&nbsp;&nbsp;My Profile</a></li>
                    <li><a href="Make_Appointment.aspx"><i></i>&nbsp;&nbsp;Make An Appointment</a></li>
                    <li><a href="Pat_change_Password.aspx"><i></i>&nbsp;&nbsp;Change Password</a></li>
                          
                </ul>
            </div>
            
        </div>

           <div class="content">


               <h1>My Profile</h1>
               <table class="auto-style1">
                   <tr>
                       <td class="auto-style2" style="font-size:25px">ID:</td>
                       <td>
                           <asp:Label ID="IDL" runat="server" Text="Label" Font-Size="30px" Height="30px"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style2" style="font-size:25px;">NAME :</td>
                       <td>
                           <asp:Label ID="NL" runat="server" Text="Label" Font-Size="30px" Height="30px"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style2"style="font-size:25px">Age :</td>
                       <td>
                           <asp:Label ID="AL" runat="server" Text="Label" Font-Size="30px" Height="30px"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style2" style="font-size:25px">Mobile No. :</td>
                       <td>
                           <asp:Label ID="ML" runat="server" Text="Label" Font-Size="30px" Height="30px"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style2"style="font-size:25px">E-mail :</td>
                       <td>
                           <asp:Label ID="EL" runat="server" Text="Label" Font-Size="30px" Height="30px"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style2"style="font-size:25px">Nation ID :</td>
                       <td>
                           <asp:Label ID="NaL" runat="server" Text="Label" Font-Size="30px" Height="30px"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style2"style="font-size:25px">Appointment Submission :</td>
                       <td>
                           <asp:Label ID="ASL" runat="server" Text="Label" Font-Size="30px" Height="30px"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style2"style="font-size:25px">Appointment Date :</td>
                       <td>
                           <asp:Label ID="ADL" runat="server" Text="Label" Font-Size="30px" Height="30px"></asp:Label>
                       </td>
                   </tr>
               </table>


               
           </div>
            
    
    </div>
    </form>
</body>
</html>
