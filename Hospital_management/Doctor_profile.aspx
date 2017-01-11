<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doctor_profile.aspx.cs" Inherits="Doctor_profile" %>

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
            width: 139%;
            height: 557px;
        }
        .auto-style2 {
            width: 146px
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" >
        <div class="header">
        <img src="logo.jpg" style="margin-top:20px;float:left;margin-left:20px"/>
         <h2>Tanim</h2>
        <h3>Hospital</h3>
       </div>



        
        <div class="sidebar" style="margin-top:40px;">
            <div class="sidebar-links well" style="background-color:#009933">
                <ul class="nav" style="background-color:#000000;" >
                    <!-- Patients -->
                    <li class="nav-header"><i class="fa fa-user"></i>&nbsp;&nbsp;Patients</li>
                    <li><a href="Amin_all_patients.aspx" ><i class="fa fa-bars"></i>&nbsp;&nbsp;All Patients</a></li>
                    <li><a href="Admin_add_patients.aspx" ><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Patient ID</a></li>
                    <li><a href="Admin_Edit_Patient.aspx"><i class="fa fa-minus"></i>&nbsp;&nbsp;Update Patient ID</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Patient ID</a></li>
                    <li class="divider"></li>
                    <!-- Doctors -->
                    <li class="nav-header"><i class="fa fa-user">&nbsp;&nbsp;</i>Doctors</li>
                    <li><a href="Admin_All_Doctor.aspx" ><i class="fa fa-bars"></i>&nbsp;&nbsp;All Doctors</a></li>
                    <li class="#add"><a href="Admin_add_doctors.aspx" class="active"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Doctors ID</a></li>
                    <li><a href="Admin_Edit_Doctors.aspx"><i class="fa fa-minus"></i>&nbsp;&nbsp;Edit Doctors ID</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Doctors ID</a></li>
                    <li class="divider"></li>
                    <li><a href="Doctor_App.aspx"><i class="fa fa-remove"></i>&nbsp;&nbsp;See Appointment List</a></li>
                </ul>
            </div>
            
        </div>

           <div class="content">
               <div style="float:left;width:300px">
               <h1>MY PROFILE </h1>
                   <table class="auto-style1">
                   <tr>
                       <td class="auto-style2" style="font-size:20px">Name:</td>
                       <td>
                           <asp:Label ID="name" runat="server" Font-Size="20px" Text="Name"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style2" style="font-size:20px">ID:</td>
                       <td>
                           <asp:Label ID="id" runat="server" Font-Size="20px" Text="Label"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style2" style="font-size:20px">Sex:</td>
                       <td>
                           <asp:Label ID="sex" runat="server" Font-Size="20px" Text="Label"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style2" style="font-size:20px">Mobile :</td>
                       <td>
                           <asp:Label ID="mobile" runat="server" Font-Size="20px" Text="Label"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style2"style="font-size:20px">Email :</td>
                       <td>
                           <asp:Label ID="email" runat="server" Font-Size="20px" Text="Label"></asp:Label>
                           <asp:Image ID="Image2" runat="server" Height="85px" />
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style2"style="font-size:20px">Join Date:</td>
                       <td>
                           <asp:Label ID="jdate" runat="server" Font-Size="20px" Text="Label"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style2"style="font-size:20px">Selary</td>
                       <td>
                           <asp:Label ID="selary" runat="server" Font-Size="20px" Text="Label"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style2"style="font-size:20px">Spesialist :</td>
                       <td>
                           <asp:Label ID="sp" runat="server" Font-Size="20px" Text="Label"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style2">Off Date :</td>
                       <td>
                           <asp:Label ID="off" runat="server" Font-Size="20px" Text="Label"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style2"style="font-size:20px">&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   </table>
                   

                   

               </div>
               <div style="float:right">
                   <asp:Image ID="Image1" runat="server" Height="215px" Width="248px" />
               </div>
               

            </div>


        </div>
        

        
    </form>
</body>
</html>
