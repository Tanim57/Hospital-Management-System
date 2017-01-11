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

public partial class Admin_Edit_Patient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Label1.Visible = false;
        Label2.Visible = false;

        // GridView2.Visible = true;
        //GridView1.Visible = false;
        if (Request.Cookies["cook"] != null)
        {
            HttpCookie cookies = Request.Cookies["cookies"];
            Session["Name"] = "Admin";
        }
        if (Session["Name"] != "Admin")
        {
            Response.Redirect("HomePage.aspx");
        } 


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
                cmd.CommandText = "select  [ID] from [DoctorsData] where " + "[ID]like '%'+ @SearchText + '%'";


                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["ID"].ToString());
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

        string query = "select * from [DoctorsData] where ID like'%" + TextBox1.Text + "%'";

        SqlCommand cmd = new SqlCommand(query, con);

        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        SqlDataReader reader;


        reader = cmd.ExecuteReader();
        reader.Read();

        Label2.Text = reader["ID"].ToString();
        FNameText.Text = reader["Name"].ToString();
        MobileText.Text = reader["Mobile No"].ToString();
        EmailText.Text = reader["Email"].ToString();
        //selaryText.Text = reader["Selary"].ToString();

        reader.Close();

        //TextBox2.Text = query;

        //SqlCommand com = new SqlCommand(query,con);

        // GridView1.DataSource = ds;
        //GridView1.DataBind();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
     

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Data_ConnectionString"].ConnectionString);
        con.Open();

        string query = "select ID  from [DoctorsData] where ID like'%" + TextBox1.Text + "%'";

        SqlCommand com = new SqlCommand(query, con);

        SqlDataReader dr;
        dr = com.ExecuteReader();


        if (dr.HasRows)
        {
            dr.Read();

            rep_bind();
            //TextBox2.Visible = true;
            //GridView1.Visible = true;
            //GridView2.Visible = false;


            Label1.Visible = true;



            TextBox1.Text = "";

            Label1.Text = "ID :" + Label2.Text + "";
        }
        else
        {
            //GridView1.Visible = false;
            //GridView2.Visible = false;

            Label1.Visible = true;
            Label1.Text = "The search Term " + TextBox1.Text + " &nbsp;Is Not Available in the Records";

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection up = new SqlConnection(ConfigurationManager.ConnectionStrings["Data_ConnectionString"].ConnectionString);
        //string update = "Update [DoctorsData] set (Name,[Mobile No],Email,[Birth Date],[Join Date],[Release Date],Selary,[Time schedule From],[Time schedule To],[Off Date],Password) VALUES (@name,@mobile,@email,@bd,@sex,@jd,@rd,@selary,@from,@to,@off,@pass) where ID like'%" + TextBox1.Text + "%'";

        //string query = "select ID  from [DoctorsData] where ID like'%" + TextBox1.Text + "%'";

        // Label1.Text = "The search Term " + TextBox1.Text + " &nbsp;Update";

        
        

        string update = "Update [DoctorsData] set Name=@name,Email=@email where ID ='" + Label2.Text + "'";

        SqlCommand con = new SqlCommand(update, up);

        try
        {

            up.Open();

            //con.Parameters.AddWithValue("@id", TextBox1.Text);
            con.Parameters.AddWithValue("@name", FNameText.Text);
            con.Parameters.AddWithValue("@email", EmailText.Text);
            /*con.Parameters.AddWithValue("@mobile", MobileText.Text);
            con.Parameters.AddWithValue("@bd", BDText.Text);
            con.Parameters.AddWithValue("@jd", JoinText.Text);
            con.Parameters.AddWithValue("@rd", RelText.Text);
            con.Parameters.AddWithValue("@selary", selaryText.Text);
            con.Parameters.AddWithValue("@from", fromText.Text);
            con.Parameters.AddWithValue("@to", ToText.Text);
            con.Parameters.AddWithValue("@off", OffDateText.SelectedItem.ToString());*/

            con.ExecuteNonQuery();
            up.Close();
        }
        catch (Exception ep)
        {

        }

    }
    protected void BDText_TextChanged(object sender, System.EventArgs e)
    {

    }
}