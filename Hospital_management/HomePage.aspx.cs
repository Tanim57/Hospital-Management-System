using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["cook"] != null)
        {
            HttpCookie cookies = Request.Cookies["cookies"];
            Session["Name"] = "Admin" ;
        }
        if(Session["Name"] == "Admin" )
        {
            Response.Redirect("Login.aspx");
        } 
    }



    protected void Button1_Click(object sender, EventArgs e)
    {

        if(UserID.Text=="Admin" && PasswordText.Text=="Admin")
        {
            Session["Name"] = "Admin";
            Response.Redirect("Login.aspx");
        }
    }
    protected void keepMeLog_CheckedChanged(object sender, EventArgs e)
    {
        HttpCookie cookies = Request.Cookies["cook"];
        if (cookies == null)
        {
            cookies = new HttpCookie("cook");
        }
        cookies["name"] = "Admin";
        cookies.Expires = DateTime.Now.AddSeconds(30);
        Response.SetCookie(cookies);
    }
}