<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Aboutas.aspx.cs" Inherits="Aboutas" %>
<html>



<head>
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
        <div class="header" style="background-image:url(Health.jpg);width:auto;height:140px">
        <img src="logo.jpg" style="margin-top:20px;float:left;margin-left:20px"/>
         <h2>Tanim</h2>
        <h3>Hospital</h3>
       </div>
        <div>
        <ul class="nav nav-tabs" style="background:#193d04; border-radius:5px" >
       <li role="presentation" ><a href="Home.aspx">&nbsp;&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"class="active"><a href="Aboutas.aspx">&nbsp;&nbsp;&nbsp;About Us&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="View_Doctor.aspx">&nbsp;&nbsp;&nbsp;View Dotors&nbsp;&nbsp;&nbsp;</a></li>
            
            <li role="presentation" ><a href="FAQ.aspx">&nbsp;&nbsp;&nbsp;FAQ&nbsp;&nbsp;&nbsp;</a></li>
       <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;Donate Blood&nbsp;&nbsp;&nbsp;</a></li>
      <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;Contact Us&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Partners.aspx">&nbsp;&nbsp;&nbsp;Our Pratners&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Log_in.aspx">&nbsp;&nbsp;&nbsp;Log In&nbsp;&nbsp;&nbsp;</a></li>
      </ul> 


      </div>

        
        
       
    
   
    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
				  <div class="panel panel-default">
				    <div class="panel-heading" role="tab" id="headingOne">
				      <h4 class="panel-title">
				        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
				          Our Mission
				        </a>
				      </h4>
				    </div>
				    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
				      <div class="panel-body">
                         
				        “Our Mission is to bring healthcare of international standards within the reach of every individual. We are committed to the achievement and maintenance of excellence in education, research and healthcare for the benefit of humanity”

                      <br /> <br /> <b> <strong> Mahmudur Rahman </strong> </b><br />
                      <i> Founder Chairman </i> <br />
                       <b> <i> Tanim Hospital Group </i> </b>
				      </div>
				    </div>
				  </div>

				  <div class="panel panel-default">
				    <div class="panel-heading" role="tab" id="headingTwo">
				      <h4 class="panel-title">
				        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
				          Our Vision
				        </a>
				      </h4>
				    </div>
				    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
				      <div class="panel-body">
				        To be recognized as a health care industry leader, valued by patients and healthcare providers, respected by the health care community, sought after as an employer and admired by our competitors.
				      </div>
				    </div>
				  </div>
                 
        <div class="panel panel-default">
				    <div class="panel-heading" role="tab" id="headingThree">
				      <h4 class="panel-title">
				        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
				          Our Values
				        </a>
				      </h4>
				    </div>
				    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
				      <div class="panel-body">
				      <b> <strong>‘U & I CARED’</strong> </b><br />
                      U – Urgency of work <br />
                      I – Integrity & honest <br />
                      C – Commitment <br />
                      A – Accountability <br/>
                      R – Respect and Mutual Trust <br />
                      E – Empathetic Teams <br />
                      D – Development of People <br />
				      </div>
				    </div>
				  </div>
				  </div>
				</div>
         
        </div>
    <div class="footer" style="margin-top:100px;text-align:center;width:auto"><p style="color:#ffffff">
             <a href="Partners.aspx" style="color:white">Our Pratner</a> | Useful Links | Quick Links | Web Mail |<a href="HomePage.aspx" style="color:white">Official Log In</a>| About Us | Contact Us
        </p>
            </div>
        <div style="background-color:#1e4904;text-align:center;"><p style="color:#cac7c7">
            18F, Bir Uttam Qazi Nuruzzaman Sarak, West Panthapath, Dhaka 1205
Phone: (880-2) 8144400, 8142431, Mobile: 01713141447 (PABX), PABX for OPD Appointment: 2001, 2002 & 2018
24hr Emergency and Ambulance service: 8144466, 8144477, 8144488
ER Mobile: 01713377773-5, Fax: (880-2) 9118921, 9114342, email: info@squarehospital.com, web: www.hospital.com

        </p></div>


    <script src="libs/jquery/jquery.min.js"></script>
    <script src="libs/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>