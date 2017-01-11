<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

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
    <form id="form1" runat="server">
        <div class="container">
        <div class="header" style="background-image:url(Health.jpg);width:auto;height:140px">
        <img src="logo.jpg" style="margin-top:20px;float:left;margin-left:20px"/>
         <h2>Tanim</h2>
        <h3>Hospital</h3>
</div>

        
        <div class="sidebar" style="margin-top:20px" >
            <div class="sidebar-links well" style="height:400px">
                <ul class="nav">
                    <!-- Patients -->
                    
                    <li><a href="Home.aspx" ><i></i>&nbsp;&nbsp;Home</a></li>
                    <li><a href="Aboutas.aspx" >&nbsp;&nbsp;About Us</a></li>
                    <li><a href="View_Doctor.aspx">&nbsp;&nbsp;View Doctor</a></li>
                    <li><a href="FAQ.aspx"><i></i>&nbsp;&nbsp;FAQ</a></li>
                    
                   
                    <li><a href="#" >&nbsp;&nbsp;Demote Blood</a></li>
                    <li class="#"><a href="#">&nbsp;&nbsp;Contuct Us</a></li>
                    <li><a href="Partners.aspx">&nbsp;&nbsp;Our Partners</a></li>
                    <li><a href="HomePage.aspx"><i></i>&nbsp;&nbsp; Official Log in</a></li>
                   
                    
                    
                </ul>
            </div>
            
        </div>


            <div class="content">
            <h1 class="title">Official Log In</h1>
            <div class="innerdiv">

                <asp:Table ID="Table1" runat="server">
                </asp:Table>
                <table class="nav-justified">
                    <tr>
                        <td>User ID</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="UserID" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="PasswordText" runat="server" TextMode="Password" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox ID="keepMeLog" runat="server" Text="Keep Me Log in" OnCheckedChanged="keepMeLog_CheckedChanged" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>

                </div>
                </div>
    
    </div>
    </form>
</body>
</html>
