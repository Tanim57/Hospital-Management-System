using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;
public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if (IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["msdn"].ConnectionString);
            con.Open();
            string userinfo = "select count(*) from [userdetails] where User Name='" + User_name.Text + "'";
            SqlCommand com = new SqlCommand(userinfo, con);
            //int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            //int temp = (int)com.ExecuteScalar();
           /* if (temp == 1)
            {
                Response.Write("User already exists");
            }*/
            con.Close();


        } 
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["msdn"].ConnectionString);

            string insertQuery = "INSERT INTO [userdetails] ([First Name],[User Name],Age,[E-mail],Password,[Mobile No],Gender) VALUES (@name,@uname,@age,@email,@password,@mobile,@gender)";
        conn.Open();
        SqlCommand con = new SqlCommand(insertQuery, conn);
        con.Parameters.AddWithValue("@name", Full_name.Text);
        con.Parameters.AddWithValue("@uname", User_name.Text);
        con.Parameters.AddWithValue("@age", Age_text.Text);
        con.Parameters.AddWithValue("@email", email.Text);
        con.Parameters.AddWithValue("@password", pass.Text);
        con.Parameters.AddWithValue("@mobile", mobile.Text);
        con.Parameters.AddWithValue("@gender", gender.SelectedItem.ToString());
        
      
        con.ExecuteNonQuery();
        conn.Close();

            Response.Redirect("Login.aspx");
        Response.Write("dcfgvhbj");

        }
        catch(Exception ex)
        {
            Response.Write("Error "+ex.ToString());
        }
        
    }
    protected void mobile_TextChanged(object sender, EventArgs e)
    {
        
    }
}