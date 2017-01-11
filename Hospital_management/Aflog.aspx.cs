using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Aflog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Abandon();
        HttpCookie cookies = Request.Cookies["cook"];
        if (Request.Cookies["cook"] != null)
        {
            cookies.Expires = DateTime.Now.AddMinutes(-2);
            Response.SetCookie(cookies);
        }

        //cookies.Expires = DateTime.Now.AddSeconds(-2);
        //Response.SetCookie(cookies);
        Response.Redirect("HomePage.aspx");
    }
    
}