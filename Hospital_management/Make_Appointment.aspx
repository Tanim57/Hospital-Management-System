<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Make_Appointment.aspx.cs" Inherits="Make_Appointment" %>

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
            width: 265px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 181px;
        }
        .auto-style5 {
            width: 181px;
            height: 20px;
        }
        .auto-style6 {
            height: 20px;
        }
    </style>

</head>
<body>
   <form id="form1" runat="server">
    <div class="container">
        <div class="header">
        <img src="logo.jpg" style="margin-top:20px;float:left;margin-left:20px"/>
         <h2>Tanim</h2>
        <h3>Hospital</h3>
            
       </div>
        <ul class="nav nav-tabs" style="background:#193d04; border-radius:5px">
       <li role="presentation" class="active"><a href="#">&nbsp;&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Aboutas.aspx">&nbsp;&nbsp;&nbsp;About Us&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="View_Doctor.aspx">&nbsp;&nbsp;&nbsp;View Dotors&nbsp;&nbsp;&nbsp;</a></li>           
            <li role="presentation" ><a href="FAQ.aspx">&nbsp;&nbsp;&nbsp;FAQ&nbsp;&nbsp;&nbsp;</a></li>
       <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;Donate Blood&nbsp;&nbsp;&nbsp;</a></li>
      <li role="presentation"><a href="#">&nbsp;&nbsp;&nbsp;Contact Us&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><a href="Partners.aspx">&nbsp;&nbsp;&nbsp;Our Pratners&nbsp;&nbsp;&nbsp;</a></li>
            <li role="presentation"><asp:Button ID="Button2" runat="server" Text="Log Out" Style="float:right;" OnClick="Button2_Click" /></li>
      </ul>
        
        <div class="sidebar">
            <div class="sidebar-links well">
                <ul class="nav">
                    <li><a href="#view" ><i></i>&nbsp;&nbsp;My Profile</a></li>
                    <li><a href="Make_Appointment.aspx" class="active"><i></i>&nbsp;&nbsp;Make An Appointment</a></li>
                    <li><a href="Pat_change_Password.aspx" ><i></i>&nbsp;&nbsp;Change Password</a></li>
                </ul>
            </div>
            
        </div>
       
        <div class="content">
            

            <table class="auto-style3">
                <tr>
                    <td class="auto-style4">Name*</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="280px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="280px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Mobile Number*</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                            <asp:TextBox ID="MobileText" runat="server" Height="30px" Width="280px"></asp:TextBox>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">National ID</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                            <asp:TextBox ID="NationText" runat="server" Height="30px" Width="280px"></asp:TextBox>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                            &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Sex*</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                            <asp:DropDownList ID="SexDrop" runat="server" Font-Size="12px" Height="30px" Width="280px">
                                <asp:ListItem>Select Sex</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                            &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Date of Birth</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                            <asp:TextBox ID="BDText" runat="server" TextMode="Date" Width="280px" Height="30px"></asp:TextBox>
                        </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Department*</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                            <asp:DropDownList ID="SPDrop" runat="server" AutoPostBack="True" Width="280px" Height="30px" OnSelectedIndexChanged="SPDrop_SelectedIndexChanged">
                                <asp:ListItem >Select One</asp:ListItem>
                               
                                <asp:ListItem Enabled="true">Cardiac &amp; Vascular Surgery</asp:ListItem>
                                <asp:ListItem>Internal Medicine &amp; Critical Care</asp:ListItem>
                                <asp:ListItem>Neurology</asp:ListItem>
                                <asp:ListItem>Orthopedics</asp:ListItem>
                                <asp:ListItem>Pathology &amp; Laboratory Medicine</asp:ListItem>
                                <asp:ListItem>ENT and Head &amp; neck Surgery</asp:ListItem>
                                <asp:ListItem>Dental Care</asp:ListItem>
                                <asp:ListItem>Psychiatry</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Choice Doctor*</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">

                            <asp:DropDownList ID="DoctorsDrop" runat="server" Width="280px" DataTextField="Name" DataValueField="Name" Height="30px">
                                
                            </asp:DropDownList>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Appointment Date*</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                            <asp:TextBox ID="JoinText" runat="server" TextMode="Date" Width="280px" Height="30px"></asp:TextBox>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input id="Reset1" type="reset" value="Reset" /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                            &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                            &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            

            <br />
&nbsp;</div>
        
        </div>
       </form>
    
</body>
</html>
