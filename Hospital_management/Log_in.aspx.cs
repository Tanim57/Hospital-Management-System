using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;

public partial class Log_in : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Data_ConnectionString"].ConnectionString);
    string insert1 = "SELECT * FROM [patientData] WHERE [ID]=@uid AND Password=@password AND Type=@type";
    SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["Data_ConnectionString"].ConnectionString);
    string insert2 = "SELECT * FROM [DoctorsData] WHERE ID=@ruid AND Password=@rpassword AND Type=@type";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["cookiess"] != null)
        {
            HttpCookie cookie = Request.Cookies["cookiess"];

            Session["Name"] = cookie["name"].ToString();
        }

        if (Session["Name"] != null)
        {
            
        

            SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["Data_ConnectionString"].ConnectionString);
            string query1 = "select Type from [patientData] where ID = '" + Session["Name"].ToString() + "'";
            string query2 = "select Type from [DoctorsData] where ID = '" + Session["Name"].ToString() + "'";
            con3.Open();



            SqlCommand cmd1 = new SqlCommand(query1, con3);
            SqlCommand cmd2 = new SqlCommand(query2, con3);
            

            try
            {
                SqlDataReader reader;
                reader = cmd1.ExecuteReader();
                reader.Read();
                String cmp1 = reader["Type"].ToString();
                cmp1 = cmp1.Replace(" ", string.Empty);
                

                reader.Close();

                if (cmp1 == "Patient")
                {
                    
                    Response.Redirect("Patient_profile.aspx");
                }                
            }
            catch (Exception ex)
            {

            }

        }
    }
         
         

    protected void Button1_Click(object sender, EventArgs e)
    {

        string id = UserID.Text;
        string password = PasswordText.Text;
        try
        {
            con.Open();
            
            
            SqlCommand mycmd = new SqlCommand(insert1, con);
            mycmd.Parameters.AddWithValue("@uid", id);
            mycmd.Parameters.AddWithValue("@password", password);
            mycmd.Parameters.AddWithValue("@type", "Patient");
            SqlDataReader pat = mycmd.ExecuteReader();

            con2.Open();
            SqlCommand rmycmd = new SqlCommand(insert2, con2);
            rmycmd.Parameters.AddWithValue("@ruid", id);
            rmycmd.Parameters.AddWithValue("@rpassword", password);
            rmycmd.Parameters.AddWithValue("@type", "Doctor");
            SqlDataReader dr = rmycmd.ExecuteReader();


            
            
            
            if(pat.HasRows)
            {    
                Session["Name"] = id;
                Session["Type"] = "Patient";
                if (id == "1000")
                    Response.Redirect("Admin_page.aspx");
                else
                Response.Redirect("Patient_profile.aspx");
            }

            /*else if (dr.HasRows)
            {
                Session["Type"] = "Doctor";
                Session["Name"] = id;
                //cookie["Type"] = "Doctor";
                //Response.SetCookie(cookie);
                Response.Redirect("Doctor_profile.aspx");
            }*/
            
            {
                //invalid login 
                //Response.Redirect("Log_in.aspx");
            }
        }
        catch (Exception ex)
        {
             
        }
        
        
        
        
       
    }
    protected void keepMeLog_CheckedChanged(object sender, EventArgs e)
    {

        HttpCookie cookies = Request.Cookies["cookiess"];
        if (cookies == null)
        {
            cookies = new HttpCookie("cookiess");
        }
        cookies["name"] = UserID.Text;
        cookies.Expires = DateTime.Now.AddSeconds(30);
        Response.SetCookie(cookies);

       
    }
}