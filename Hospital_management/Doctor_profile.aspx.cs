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

public partial class Doctor_profile : System.Web.UI.Page
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
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Data_ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from [DoctorsData] where ID = '" + Session["Name"].ToString() + "'";
            
            SqlCommand cmd = new SqlCommand(query, con);

            try
            {
                SqlDataReader reader;
                reader = cmd.ExecuteReader();
                reader.Read();

                String cmp1 = reader["Type"].ToString();
                cmp1 = cmp1.Replace(" ", string.Empty);

                if (cmp1 == "Doctor")
                {
                    

                    try
                    {
                        

                        string s =reader["ImageURL"].ToString();

                        Image1.ImageUrl =Server.MapPath("~/Image/")+s;
                        Image1.ImageUrl = "Image/" + reader["ImageURL"].ToString();
                        

                        name.Text = reader["Name"].ToString();
                        id.Text = reader["ID"].ToString();
                        mobile.Text = reader["Mobile No"].ToString();
                        email.Text = reader["Email"].ToString();
                        jdate.Text = reader["Join Date"].ToString();
                        selary.Text = reader["Selary"].ToString();
                        sp.Text = reader["Spesialist"].ToString();
                        off.Text = reader["Off Date"].ToString();

                        reader.Close();


                        con.Close();
                    }
                    catch (Exception ex)
                    {

                    }

                    

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
        else
        {
            Response.Redirect("Log_in.aspx");
        }
    }
    
}