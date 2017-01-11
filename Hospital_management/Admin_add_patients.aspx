<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_add_patients.aspx.cs" Inherits="AdminPage" %>


<head >
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
            width: 154px;
        }
        .auto-style2 {
            width: 154px;
            text-align: right;
            
        }
        .auto-style3 {
            text-align: center;
            width: 276px;   
        }
        .auto-style4 {
            width: 276px
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
                    <li><a href="Admin_add_patients.aspx" class="active"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Patient ID</a></li>
                    <li><a href="Admin_Edit_Patient.aspx"><i class="fa fa-minus"></i>&nbsp;&nbsp;Update Patient ID</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Patient ID</a></li>
                    <li class="divider"></li>
                    <!-- Doctors -->
                    <li class="nav-header"><i class="fa fa-user">&nbsp;&nbsp;</i>Doctors</li>
                    <li><a href="Admin_All_Doctor.aspx" ><i class="fa fa-bars"></i>&nbsp;&nbsp;All Doctors</a></li>
                    <li class="#add"><a href="Admin_add_doctors.aspx" ><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Doctors ID</a></li>
                    <li><a href="Admin_Edit_Doctors.aspx"><i class="fa fa-minus"></i>&nbsp;&nbsp;Edit Doctors ID</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Doctors ID</a></li>
                    
                </ul>
            </div>
            
        </div>

           <div class="content">
               <fieldset style="margin-top:20px">
                   <legend><i>Add Patient</i></legend>
           
            <div class="innerdiv">

                
                <!-- Add Patients -->
                
                <span id="Label1"></span>
                <table class="nav-justified">
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">Name :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="NameText" runat="server" Height="30px" Width="300px" Style="border-radius:5px;"></asp:TextBox>
                        </td>
                        <td class="text-left">&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameText" ErrorMessage="Please Insert Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">Age :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="AgeText" runat="server" Height="30px" Width="300px" ></asp:TextBox>
                        </td>
                        <td class="text-left">&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="AgeText" ErrorMessage="Age is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">Sex :</td>
                        <td class="auto-style3">
                            <asp:DropDownList ID="SexDrop" runat="server" Font-Size="12px" Height="30px" Width="300px">
                                <asp:ListItem>Select Sex</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="text-left">&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="SexDrop" ErrorMessage="Sex is required" ForeColor="#FF3300" InitialValue="Select Sex"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">E-mail :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="EmailText" runat="server" Height="30px" Width="300px"></asp:TextBox>
                        </td>
                        <td class="text-left">&nbsp;&nbsp;&nbsp;
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailText" ErrorMessage="Invalid E-mail" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">Mobile No :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="MobileText" runat="server" Height="30px" Width="300px"></asp:TextBox>
                        </td>
                        <td class="text-left">&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MobileText" ErrorMessage="Mobile No. is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="font-size: 25px; color: #009933">National ID :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="NationText" runat="server" Height="30px" Width="300px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style4">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;
                            <input id="Reset1" type="reset" value="Reset" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

                </div>
       </fieldset>
        </div>
    </div>

    <script src="libs/jquery/jquery.min.js"></script>
    <script src="libs/bootstrap/js/bootstrap.min.js"></script>
    

    

       </form>

    

</body>

