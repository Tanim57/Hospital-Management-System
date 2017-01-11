<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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

</head>
<body>
    <div class="container">

    <form id="form1" runat="server">
    <div class="header" style="background-image:url(Health.jpg);width:auto;height:140px">
        <img src="logo.jpg" style="margin-top:20px;float:left;margin-left:20px"/>
         <h2>Tanim</h2>
        <h3>Hospital</h3>
       </div>
        <div>
        <ul class="nav nav-tabs" style="background:#193d04; border-radius:5px" >
       <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Aboutas.aspx">&nbsp;&nbsp;&nbsp;About Us&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="View_Doctor.aspx">&nbsp;&nbsp;&nbsp;View Dotors&nbsp;&nbsp;&nbsp;</a></li>
            
            <li role="presentation" ><a href="FAQ.aspx">&nbsp;&nbsp;&nbsp;FAQ&nbsp;&nbsp;&nbsp;</a></li>
       <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;Donate Blood&nbsp;&nbsp;&nbsp;</a></li>
      <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;Contact Us&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Partners.aspx">&nbsp;&nbsp;&nbsp;Our Pratners&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Log_in.aspx">&nbsp;&nbsp;&nbsp;Log In&nbsp;&nbsp;&nbsp;</a></li>
      </ul> 


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
                    <li class="#add"><a href="Admin_add_doctors.aspx"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Doctors ID</a></li>
                    <li><a href="Admin_Edit_Doctors.aspx"><i class="fa fa-minus"></i>&nbsp;&nbsp;Edit Doctors ID</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Doctors ID</a></li>
                    
                </ul>
            </div>
            
        </div>
        <div class="content">

            <p style="font-size:50px;margin-top:160px">WELCOME TO TANIM 
                HOSPIATL MANAGEMENT</p>
        </div>
    </form>
        </div>
</body>
</html>