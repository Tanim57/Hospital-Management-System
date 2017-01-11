<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_add_doctors.aspx.cs" Inherits="Admin_add_doctors" %>

<head >
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" >
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="libs/normalize/normalize.css" type="text/css">
    <link rel="stylesheet" href="libs/font-awesome/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/layout.css" type="text/css">
    <link rel="stylesheet" href="css/main.css" type="text/css">
    <link href="HomeStyle.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        .auto-style2 {
            width: 524px;
            text-align: right;
        }
        .auto-style3 {
            text-align: center;
            width: 306px;
        }
        .auto-style8 {
            width: 524px
        }
        .auto-style11 {
            text-align: left;
            width: 306px;
        }
        .auto-style12 {
            width: 306px
        }
        .auto-style13 {
            text-align: left;
            width: 401px;
        }
        .auto-style14 {
            width: 401px
        }
        
    </style>
</head>
<body>
       <form id="form1" runat="server">
       <div class="container">
        <div class="header" style="background-image:url(Health.jpg);width:auto;height:140px">
        <img src="logo.jpg" style="margin-top:20px;float:left;margin-left:20px"/>
         <h2>Tanim</h2>
        <h3>Hospital</h3>
       </div>
        <div>
        <ul class="nav nav-tabs" style="background:#193d04; border-radius:5px" >
       <li role="presentation" ><a href="#">&nbsp;&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Aboutas.aspx">&nbsp;&nbsp;&nbsp;About Us&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="View_Doctor.aspx">&nbsp;&nbsp;&nbsp;View Dotors&nbsp;&nbsp;&nbsp;</a></li>
            
            <li role="presentation" ><a href="FAQ.aspx">&nbsp;&nbsp;&nbsp;FAQ&nbsp;&nbsp;&nbsp;</a></li>
       <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;Donate Blood&nbsp;&nbsp;&nbsp;</a></li>
      <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;Contact Us&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Partners.aspx">&nbsp;&nbsp;&nbsp;Our Pratners&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Aflog.aspx">&nbsp;&nbsp;&nbsp;Log Out&nbsp;&nbsp;&nbsp;</a></li>
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
                    <li class="#add"><a href="Admin_add_doctors.aspx" class="active"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Doctors ID</a></li>
                    <li><a href="Admin_Edit_Doctors.aspx"><i class="fa fa-minus"></i>&nbsp;&nbsp;Edit Doctors ID</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Doctors ID</a></li>
                    <li class="divider"></li>
                    <li><a href="Doctor_App.aspx"><i class="fa fa-remove"></i>&nbsp;&nbsp;See Appointment List</a></li>
                </ul>
            </div>
            
        </div>

           <div class="content">
            <h1 class="title">Create Doctor ID</h1>
            <div class="innerdiv">
                <!-- Add Patients -->
                
                <span id="Label1"></span>
                <table class="nav-justified">
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">First Name :</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="FNameText" runat="server" Height="30px" Width="280px" Style="border-radius:5px;"></asp:TextBox>
                        </td>
                        <td class="auto-style13">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FNameText" ErrorMessage="Insert First Name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">Last Name :</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="LNameText" runat="server" Height="30px" Width="280px" ></asp:TextBox>
                        </td>
                        <td class="auto-style13">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LNameText" ErrorMessage="Insert Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">ID:&nbsp; </td>
                        <td class="auto-style11">
                            <asp:TextBox ID="IdText" runat="server" Width="280px" Height="30px"></asp:TextBox>
                        </td>
                        <td class="auto-style13">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="IdText" ErrorMessage="Insert ID" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">E-mail :</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="EmailText" runat="server" Height="30px" Width="280px"></asp:TextBox>
                        </td>
                        <td class="auto-style13">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailText" ErrorMessage="Invalid E-mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="EmailText" ErrorMessage="Insert Email ID" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">Mobile No :</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="MobileText" runat="server" Height="30px" Width="280px"></asp:TextBox>
                        </td>
                        <td class="auto-style13">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MobileText" ErrorMessage="Mobile No. is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">National ID :</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="NationText" runat="server" Height="30px" Width="280px"></asp:TextBox>
                        </td>
                        <td class="auto-style14">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="NationText" ErrorMessage="National ID is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">Gov&#39;t Reg. No: </td>
                        <td class="auto-style11">
                            <asp:TextBox ID="GRText" runat="server" Width="280px" Height="30px"></asp:TextBox>
                        </td>
                        <td class="auto-style14">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="GRText" ErrorMessage="Gov't ID is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">Date of Birth:</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="BDText" runat="server" TextMode="Date" Width="280px" Height="30px"></asp:TextBox>
                        </td>
                        <td class="auto-style14">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="BDText" ErrorMessage="Birth Date is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">Sex : </td>
                        <td class="auto-style11">
                            <asp:DropDownList ID="SexDrop" runat="server" Font-Size="12px" Height="30px" Width="280px">
                                <asp:ListItem>Select Sex</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style14">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="SexDrop" ErrorMessage="Sex is required" ForeColor="Red" InitialValue="Select Sex"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">Spesialist :</td>
                        <td class="auto-style11">
                            <asp:DropDownList ID="SPDrop" runat="server" Width="280px" Height="30px">
                                <asp:ListItem>Select One</asp:ListItem>
                                <asp:ListItem>Cardiac &amp; Vascular Surgery</asp:ListItem>
                                <asp:ListItem>Internal Medicine &amp; Critical Care</asp:ListItem>
                                <asp:ListItem>Neurology</asp:ListItem>
                                <asp:ListItem>Orthopedics</asp:ListItem>
                                <asp:ListItem>Pathology &amp; Laboratory Medicine</asp:ListItem>
                                <asp:ListItem>ENT and Head &amp; neck Surgery</asp:ListItem>
                                <asp:ListItem>Dental Care</asp:ListItem>
                                <asp:ListItem>Psychiatry</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style14">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="SPDrop" ErrorMessage="Fill up this field" ForeColor="Red" InitialValue="Select One"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">Join Date :</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="JoinText" runat="server" TextMode="Date" Width="280px" Height="30px"></asp:TextBox>
                        </td>
                        <td class="auto-style14">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="JoinText" ErrorMessage="fill Up this Field" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">Release Date :</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="RelText" runat="server" TextMode="Date" Width="280px" Height="30px"></asp:TextBox>
                        </td>
                        <td class="auto-style14">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">Selary :</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="selaryText" runat="server" Width="280px" Height="30px"></asp:TextBox>
                        </td>
                        <td class="auto-style14">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="selaryText" ErrorMessage="fill Up this Field" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">Time schedule:&nbsp; </td>
                        <td class="auto-style11">
                            From:
                            <asp:TextBox ID="fromText" runat="server" TextMode="Time" Width="200px" Height="30px"></asp:TextBox>
                            <br />
                            To:
                            <asp:TextBox ID="ToText" runat="server" TextMode="Time" Width="200px" Height="30px"></asp:TextBox> 
                        </td>
                        <td class="auto-style14">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="fromText" ErrorMessage="fill Up this Field" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ToText" ErrorMessage="Fill up this Field" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">Off Date :</td>
                        <td class="auto-style11">
                            <asp:DropDownList ID="OffDateText" runat="server" Width="280px" Height="30px">
                                <asp:ListItem>Select Off Date</asp:ListItem>
                                <asp:ListItem>Saturday</asp:ListItem>
                                <asp:ListItem>Sunday</asp:ListItem>
                                <asp:ListItem>Monday</asp:ListItem>
                                <asp:ListItem>Tuesday</asp:ListItem>
                                <asp:ListItem>Wednesday</asp:ListItem>
                                <asp:ListItem>Thursday</asp:ListItem>
                                <asp:ListItem>Friday</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style14">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">Upload Photo:</td>
                        <td class="auto-style3">
                            <div class="text-left">
                            <asp:FileUpload ID="PhotoUpload" runat="server" Width="200px" />
                            </div>
&nbsp;</td>
                        <td class="auto-style14">
                            <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="PhotoUpload" ErrorMessage="Upload a Photo" ForeColor="Red"></asp:RequiredFieldValidator>
                      -->  </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style12">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;
                            <input id="Reset1" type="reset" value="Reset" /></td>
                        <td class="auto-style14">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style14">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style14">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style14">&nbsp;</td>
                    </tr>
                </table>
            </div>
       
        
    </div>
            </div>

    <script src="libs/jquery/jquery.min.js"></script>
    <script src="libs/bootstrap/js/bootstrap.min.js"></script>

    

       </form>

   
</body>

