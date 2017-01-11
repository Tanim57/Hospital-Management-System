using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Amin_all_patients : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.Cookies["cook"] != null)
        {
            HttpCookie cookies = Request.Cookies["cookies"];
            Session["Name"] = "Admin";
        }
        if (Session["Name"] != "Admin")
        {
            Response.Redirect("HomePage.aspx");
        } 
        Label1.Visible = false;
        GridView2.Visible = true;
        GridView1.Visible = false;
        


    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> SearchCustomers(string prefixText, int count)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager
                    .ConnectionStrings["Data_ConnectionString"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select  [Name] from [patientData] where " + "[Name]like '%'+ @SearchText + '%'";


                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["Name"].ToString());
                    }
                }
                conn.Close();
                return customers;
            }
        }
    }

    private void rep_bind()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Data_ConnectionString"].ConnectionString);
        con.Open();

        string query = "select * from [patientData] where Name like'%" + TextBox1.Text + "%'";
        //string query = "select Name,Sex from [DoctorsData] where ID like'%" + TextBox1.Text + "%'";

        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Data_ConnectionString"].ConnectionString);
        con.Open();

        string query = "select Name  from [patientData] where Name like'%" + TextBox1.Text + "%'";
        SqlCommand com = new SqlCommand(query, con);

        SqlDataReader dr;
        dr = com.ExecuteReader();


        if (dr.HasRows)
        {
            dr.Read();

            rep_bind();
            GridView1.Visible = true;
            GridView2.Visible = false;

            TextBox1.Text = "";
            Label1.Text = "";
        }
        else
        {
            GridView1.Visible = false;
            GridView2.Visible = false;
            Label1.Visible = true;
            Label1.Text = "The search Term " + TextBox1.Text + " &nbsp;Is Not Available in the Records"; ;

        }
    }
}