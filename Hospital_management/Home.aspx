<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>


<html>
<head runat="server">
    <title></title>
    
    
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" >
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="libs/normalize/normalize.css" type="text/css">
    <link rel="stylesheet" href="libs/font-awesome/css/font-awesome.min.css" type="text/css"  />
    <link rel="stylesheet" href="css/layout.css" type="text/css">
    <link rel="stylesheet" href="css/main.css" type="text/css">
    <link href="HomeStyle.css" rel="stylesheet" type="text/css" />      
    <link rel="Stylesheet"href="css/bar/bar.css"type="text/css" />
    <link rel="Stylesheet"href="css/dark/dark.css"type="text/css" />
    <link rel="Stylesheet"href="css/default/default.css"type="text/css" />
    <link rel="Stylesheet"href="css/light/light.css"type="text/css" />
    <link rel="Stylesheet"href="css/nivo-slider.css"type="text/css" />
    
</head>

<body >
   <div class="container">
        
    <form id="form1" runat="server">

        <div class="header" style="background-image:url(Health.jpg);width:auto;height:140px">
        <img src="logo.jpg" style="margin-top:20px;float:left;margin-left:20px"/>
         <h2>Tanim</h2>
        <h3>Hospital</h3>
       </div>
        <div>
        <ul class="nav nav-tabs" style="background:#193d04; border-radius:5px" >
       <li role="presentation" class="active"><a href="#">&nbsp;&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Aboutas.aspx">&nbsp;&nbsp;&nbsp;About Us&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="View_Doctor.aspx">&nbsp;&nbsp;&nbsp;View Dotors&nbsp;&nbsp;&nbsp;</a></li>
            
            <li role="presentation" ><a href="FAQ.aspx">&nbsp;&nbsp;&nbsp;FAQ&nbsp;&nbsp;&nbsp;</a></li>
       <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;Donate Blood&nbsp;&nbsp;&nbsp;</a></li>
      <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;Contact Us&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Partners.aspx">&nbsp;&nbsp;&nbsp;Our Pratners&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Log_in.aspx">&nbsp;&nbsp;&nbsp;Log In&nbsp;&nbsp;&nbsp;</a></li>
      </ul> 


      </div>

        <div>
        <div style="float:left;height:400px;width:700px">
           <div class="slider-wrapper  theme-bar" style="height:400px">
             <div class="nivoSlider" id="slider" style="height:400px">
                 <img src="NewFolder1/6.jpg" alt="" />
                 <img src="NewFolder1/2.jpg" alt="" />
                 <img src="NewFolder1/3.jpg" alt="" />
                 <img src="NewFolder1/4.jpg" alt="" />
                 <img src="NewFolder1/5.jpg" alt="" />
               </div>
            </div>
            </div>
            <div style=" margin-top:0px;margin-left:0px; height:160px">
             <div>
                <header style="background-color:#a39f9f;margin-left:10px ; border-radius:5px">&nbsp&nbsp&nbsp<b style="color:#ffffff">  Quick Link</b></header>
                <fieldset  style="height:160px; margin-left:20px;margin-right:10px; background-color:#cac7c7">
                    
                     <ul style="list-style-type: none; border-radius:5px; padding: 5px; margin: 5px; height: 185px;">
                 <li><a alt="" style="color:white" href="Make_Appointment.aspx" target="_blank">Make Appointment</a></li>
                 <li><a alt="" style="color:white" href="View_Doctor.aspx" target="_blank">Find Doctors</a></li>
                 <li><a alt=""style="color:white" href="Partners.aspx" target="_blank">Affiliated Partner</a></li>
                 <li><a alt=""style="color:white" href="#" target="_blank">Contact Us</a></li>
       
             </ul>
                

                      
                    </fieldset> 
                 </div>
                <div>
                    <header style="background-color:#a39f9f;margin-left:10px ; border-radius:5px">&nbsp&nbsp&nbsp<b style="color:#ffffff">  Why Trust Us</b></header>
                <fieldset  style="height:192px; margin-left:20px;margin-right:10px; background-color:#cac7c7">
                    
                     
       
             T&T Hospitals Limited, a concern of Square Group is a 300-bed tertiary care Hospital. This hospital is an affiliate partner of Methodist Healthcare, USA, Christian Medical Collage, Vellore, India and Care IVF centre, Singapore. Our vision is that SQUARE Hospital will become the location of choice for Bangladeshis
                

                      
                    </fieldset> 

                </div>
                   
                 

                  
                </div>
              
                


            
            
        
            </div>
        <div class="footer" style="margin-top:300px;text-align:center;width:auto"><p style="color:#ffffff">
             <a href="Partners.aspx" style="color:white">Our Pratner</a> | Useful Links | Quick Links | Web Mail |<a href="HomePage.aspx" style="color:white">Official Log In</a>| About Us | Contact Us
        </p>
            </div>
        <div style="background-color:#1e4904;text-align:center;"><p style="color:#cac7c7">
            18F, Bir Uttam Qazi Nuruzzaman Sarak, West Panthapath, Dhaka 1205
Phone: (880-2) 8144400, 8142431, Mobile: 01713141447 (PABX), PABX for OPD Appointment: 2001, 2002 & 2018
24hr Emergency and Ambulance service: 8144466, 8144477, 8144488
ER Mobile: 01713377773-5, Fax: (880-2) 9118921, 9114342, email: info@squarehospital.com, web: www.hospital.com

        </p></div>

        </form> 
        </div>

    
    
    <script type="text/javascript" src="libs/js/jquery-1.7.1.min.js"></script> 
	<script type="text/javascript" src="libs/js/jquery.nivo.slider.pack.js"></script> 
    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    </script> 
    
   
</body>
</html>
