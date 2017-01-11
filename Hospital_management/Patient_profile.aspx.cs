using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Patient_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Request.Cookies["cookiess"] != null)
        {
            HttpCookie cookie = Request.Cookies["cookiess"];
           
            Session["Name"] = cookie["name"].ToString();
        }



        if (Session["Name"] != null)
        {
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Data_ConnectionString"].ConnectionString);
                con.Open();
                string query = "select * from [patientData] where ID = '" + Session["Name"].ToString() + "'";



                SqlCommand cmd = new SqlCommand(query, con);

                try
                {
                    SqlDataReader reader;
                    reader = cmd.ExecuteReader();
                    reader.Read();
                    String cmp1 = reader["Type"].ToString();
                    cmp1 = cmp1.Replace(" ", string.Empty);
                    if (cmp1 == "Patient")
                    {
                        
                        IDL.Text = Session["Name"].ToString();
                        NL.Text = reader["Name"].ToString();
                        AL.Text = reader["Age"].ToString();
                        ML.Text = reader["MobileNo."].ToString();
                        NaL.Text = reader["NationalID"].ToString();
                        reader.Close();

                    }
                    else
                    {
                        Response.Redirect("Log_in.aspx");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }
            
        }
        else
        {
            Response.Redirect("Log_in.aspx");
        }
    }

    protected void Button1_Click(object sender, System.EventArgs e)
    {
        Session.Abandon();
        HttpCookie cookies = Request.Cookies["cookiess"];
        if(Request.Cookies["cookiess"] != null)
        {
            cookies.Expires = DateTime.Now.AddMinutes(-2);
            Response.SetCookie(cookies);
        }
        
        //cookies.Expires = DateTime.Now.AddSeconds(-2);
        //Response.SetCookie(cookies);
        Response.Redirect("Log_in.aspx");


       
    }
}