using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;

public partial class Make_Appointment : System.Web.UI.Page
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
            string query = "select * from [patientData] where ID = '" + Session["Name"].ToString() + "'";
            
            

        SqlCommand cmd = new SqlCommand(query, con);

        try
        {
            SqlDataReader reader;


            reader = cmd.ExecuteReader();
            reader.Read();
            String cmp1 =reader["Type"].ToString();
            cmp1 = cmp1.Replace(" ", string.Empty);
            if ( cmp1 != "Patient")
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Data_ConnectionString"].ConnectionString);
        string insert = "INSERT INTO [appointment] (ID,Name,[MobileNo.],[Birth Date],Sex,Department,[Choice Doctor],[Appointment Date]) VALUES (@id,@name,@mobile,@bd,@sex,@dep,@doc,@date)";
        string s="";

        if (Session["Name"] != null)
        {
            s = Session["Name"].ToString();
            SqlCommand cmd = new SqlCommand(insert, con);
            try
            {
                con.Open();
                cmd.Parameters.AddWithValue("@id", s);
                cmd.Parameters.AddWithValue("@name", TextBox1.Text + " " + TextBox2.Text);               
                cmd.Parameters.AddWithValue("@mobile", MobileText.Text);
                cmd.Parameters.AddWithValue("@bd", BDText.Text);
                cmd.Parameters.AddWithValue("@sex", SexDrop.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@dep", SPDrop.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@doc",DoctorsDrop.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@date",JoinText.Text);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    
    }
    protected void SPDrop_SelectedIndexChanged(object sender, EventArgs e)
    {

        DoctorsDrop.Items.Clear();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Data_ConnectionString"].ConnectionString);
        String s = SPDrop.SelectedItem.ToString();
        string dep = "SELECT * FROM [DoctorsData] WHERE Spesialist='"+ SPDrop.SelectedItem.ToString() + "'";
        
        SqlCommand cmd = new SqlCommand(dep,con);
        SqlDataReader reader;
        ListItem newItem = new ListItem();
        newItem.Text = "Select Doctor Name";
        newItem.Value = "";
        DoctorsDrop.Items.Add(newItem);
        try
        {
            con.Open();
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                newItem = new ListItem();
                newItem.Text = reader["Name"].ToString();
                //newItem.Text = "rtyvgbuh";
                newItem.Value = reader["Name"].ToString();
                DoctorsDrop.Items.Add(newItem);
            }
            reader.Close();
            
        }
        catch (Exception err)
        {
            
        }
        finally
        {
            con.Close();
        }
    }
    protected void Button2_Click(object sender, System.EventArgs e)
    {
        Session.Abandon();
        HttpCookie cookies = Request.Cookies["cookiess"];
        if (Request.Cookies["cookiess"] != null)
        {
            cookies.Expires = DateTime.Now.AddMinutes(-2);
            Response.SetCookie(cookies);
        }

        //cookies.Expires = DateTime.Now.AddSeconds(-2);
        //Response.SetCookie(cookies);
        Response.Redirect("Log_in.aspx");



    }
}