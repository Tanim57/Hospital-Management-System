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

public partial class View_Doctor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SPDrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Data_ConnectionString"].ConnectionString);

        string dep = "SELECT Name,Spesialist,[Time schedule From],[Time schedule To],[Off Date] FROM [DoctorsData] WHERE Spesialist ='" + SPDrop.SelectedItem.ToString() + "'";

        
        
        con.Open();

        

        SqlCommand cmd = new SqlCommand(dep, con);
        //SqlDataReader reader;
        

        GridView2.Visible = false;
        SqlDataAdapter da = new SqlDataAdapter(dep, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        GridView1.Visible = true;
        GridView2.Visible = false;
        con.Close();
        if (SPDrop.SelectedItem.ToString() == "Select One")
        {
            GridView2.Visible = true;

        }
    }
}