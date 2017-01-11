<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Edit_Doctors.aspx.cs" Inherits="Admin_Edit_Doctors" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
        .auto-style3 {
            width: 45px;
            text-align: left;
        }
        .auto-style4 {
            width: 157px;
            text-align: left;
        }
        .auto-style6 {
            width: 283px;
            height: 28px;
            text-align: left;
        }
        .auto-style7 {
            width: 283px;
            height: 15px;
            text-align: left;
        }
        .auto-style8 {
            width: 283px;
            height: 2px;
            text-align: left;
        }
        .auto-style9 {
            width: 283px;
            height: 25px;
            text-align: left;
        }
        .auto-style10 {
            width: 283px;
            height: 18px;
            text-align: left;
        }
        .auto-style11 {
            width: 283px;
            height: 16px;
            text-align: left;
        }
        .auto-style12 {
            width: 283px;
            height: 31px;
            text-align: left;
        }
        .auto-style13 {
            width: 283px;
            height: 27px;
            text-align: left;
        }
        .auto-style14 {
            width: 157px;
            height: 43px;
            text-align: left;
        }
        .auto-style15 {
            width: 45px;
            height: 43px;
            text-align: left;
        }
        .auto-style16 {
            width: 157px;
            height: 27px;
            text-align: left;
        }
        .auto-style17 {
            width: 157px;
            height: 31px;
            text-align: left;
        }
        .auto-style18 {
            width: 157px;
            height: 16px;
            text-align: left;
        }
        .auto-style19 {
            width: 157px;
            height: 18px;
            text-align: left;
        }
        .auto-style20 {
            width: 157px;
            height: 25px;
            text-align: left;
        }
        .auto-style21 {
            width: 157px;
            height: 2px;
            text-align: left;
        }
        .auto-style22 {
            width: 157px;
            height: 15px;
            text-align: left;
        }
        .auto-style23 {
            width: 157px;
            height: 28px;
            text-align: left;
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
       <li role="presentation" ><a href="Home.aspx">&nbsp;&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;</a></li>
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
                    <li><a href="Admin_Edit_Patient.aspx" class="active"><i class="fa fa-minus"></i>&nbsp;&nbsp;Update Patient ID</a></li>
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
        
        
             
     <div>
        
         <table>
            <tr>
                <td style="color: #800000; font-size: large;">
                Search</td>
                <td >
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
                 <asp:TextBox ID="TextBox1" Style="border-radius:5px" placeholder="Search ID" runat="server" Height="25px" Width="338px" CssClass="txtbox"></asp:TextBox>
                    <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" MinimumPrefixLength="1" ServiceMethod="SearchCustomers" TargetControlID="TextBox1"></asp:AutoCompleteExtender>

                 </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Go" onclick="Button1_Click" onkeyup="" Height="27px" Width="100px" CssClass="button" />
                </td>
            </tr>
           
        </table>
    <p> 
        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Maroon" Font-Bold="False" Font-Size="XX-Large"></asp:Label></p>
         <p> 
             <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
         </p>
         <p></p>
    </div>

            <div style="margin-left:0px">
                <table class="nav-justified">
                    <tr>
                        <td class="auto-style23" style="font-size: 25px; color: #009933">Name :</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="FNameText" runat="server" Height="30px" Width="300px" Style="border-radius:5px;"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22" style="font-size: 25px; color: #009933">E-mail :</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="EmailText" runat="server" Height="30px" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21" style="font-size: 25px; color: #009933">Mobile No :</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="MobileText" runat="server" Height="30px" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20" style="font-size: 25px; color: #009933">Date of Birth:</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="BDText" runat="server" TextMode="Date" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19" style="font-size: 25px; color: #009933">Join Date :</td>
                        <td class="auto-style10">
                            <asp:TextBox ID="JoinText" runat="server" TextMode="Date" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18" style="font-size: 25px; color: #009933">Release Date :</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="RelText" runat="server" TextMode="Date" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18" style="font-size: 25px; color: #009933">Selary :</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="selaryText" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17" style="font-size: 25px; color: #009933">Time schedule:&nbsp; </td>
                        <td class="auto-style12">
                            From:
                            <asp:TextBox ID="fromText" runat="server" TextMode="Time" Width="200px"></asp:TextBox>
                            <br />
                            To:
                            <asp:TextBox ID="ToText" runat="server" TextMode="Time" Width="200px"></asp:TextBox> 
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16" style="font-size: 25px; color: #009933">Off Date :</td>
                        <td class="auto-style13">
                            <asp:DropDownList ID="OffDateText" runat="server" Width="200px">
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
                    </tr>
                    <tr>
                        <td class="auto-style14" style="font-size: 25px; color: #009933">Upload Photo:</td>
                        <td class="auto-style15">
                            <div class="text-left">
                            <asp:FileUpload ID="PhotoUpload" runat="server" Width="200px" />
                            </div>
&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="font-size: 25px; color: #009933">&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" />
                        </td>
                    </tr>
                </table>


            </div>

        </div>


      </div>     
    
    </form>
</body>
</html>
