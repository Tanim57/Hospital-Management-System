using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;

public partial class Admin_add_doctors : System.Web.UI.Page
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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection doc = new SqlConnection(ConfigurationManager.ConnectionStrings["Data_ConnectionString"].ConnectionString);
            string insert = "INSERT INTO [DoctorsData] (ID,Name,[Mobile No],Email,[National ID],[Registration No],[Birth Date],Sex,Spesialist,[Join Date],[Release Date],Selary,[Time schedule From],[Time schedule To],[Off Date],Password,ImageURL) VALUES (@id,@name,@mobile,@email,@nid,@reg,@bd,@sex,@sp,@jd,@rd,@selary,@from,@to,@off,@pass,@img)";
            doc.Open();

            if(PhotoUpload.PostedFile!=null)

            {
                string filename = PhotoUpload.PostedFile.FileName.ToString();
                PhotoUpload.SaveAs(Server.MapPath("~/Image/"+filename));
            }

           
                SqlCommand con = new SqlCommand(insert, doc);
            con.Parameters.AddWithValue("@id",IdText.Text);
            con.Parameters.AddWithValue("@name",FNameText.Text +" " +LNameText.Text);
            con.Parameters.AddWithValue("email", EmailText.Text);
            con.Parameters.AddWithValue("@mobile",MobileText.Text);
            con.Parameters.AddWithValue("@nid",NationText.Text);
            con.Parameters.AddWithValue("@reg",GRText.Text);
            con.Parameters.AddWithValue("@bd",BDText.Text);
            con.Parameters.AddWithValue("@sex",SexDrop.SelectedItem.ToString());
            con.Parameters.AddWithValue("@sp",SPDrop.SelectedItem.ToString());
            con.Parameters.AddWithValue("@jd",JoinText.Text);
            con.Parameters.AddWithValue("@rd",RelText.Text);
           con.Parameters.AddWithValue("@selary",selaryText.Text);
            con.Parameters.AddWithValue("@from",fromText.Text);
            con.Parameters.AddWithValue("@to",ToText.Text);
           con.Parameters.AddWithValue("@off",OffDateText.SelectedItem.ToString());
           
            
           //con.Parameters.AddWithValue("@image", PhotoUpload.);
           string password = GeneratePassword(6, 0);
           con.Parameters.AddWithValue("@pass", password);
           con.Parameters.AddWithValue("@img", PhotoUpload.FileName.ToString());
            con.ExecuteNonQuery();
            doc.Close();
            Response.Redirect("Admin_All_Doctor.aspx");
            //Response.Write("ewve");

        }
        catch(Exception ex )
        {
            Response.Write(ex.ToString());
            
        }
    }
    public static string GeneratePassword(int Lenght, int NonAlphaNumericChars)
    {
        string allowedChars = "abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ0123456789";
        string allowedNonAlphaNum = "!@#$%^&*()_-+=[{]};:<>|./?";
        Random rd = new Random();

        if (NonAlphaNumericChars > Lenght || Lenght <= 0 || NonAlphaNumericChars < 0)
            throw new ArgumentOutOfRangeException();

        char[] pass = new char[Lenght];
        int[] pos = new int[Lenght];
        int i = 0, j = 0, temp = 0;
        bool flag = false;

        //Random the position values of the pos array for the string Pass
        while (i < Lenght - 1)
        {
            j = 0;
            flag = false;
            temp = rd.Next(0, Lenght);
            for (j = 0; j < Lenght; j++)
                if (temp == pos[j])
                {
                    flag = true;
                    j = Lenght;
                }

            if (!flag)
            {
                pos[i] = temp;
                i++;
            }
        }

        //Random the AlphaNumericChars
        for (i = 0; i < Lenght - NonAlphaNumericChars; i++)
            pass[i] = allowedChars[rd.Next(0, allowedChars.Length)];

        //Random the NonAlphaNumericChars
        for (i = Lenght - NonAlphaNumericChars; i < Lenght; i++)
            pass[i] = allowedNonAlphaNum[rd.Next(0, allowedNonAlphaNum.Length)];

        //Set the sorted array values by the pos array for the rigth posistion
        char[] sorted = new char[Lenght];
        for (i = 0; i < Lenght; i++)
            sorted[i] = pass[pos[i]];

        string Pass = new String(sorted);

        return Pass;
    }
}