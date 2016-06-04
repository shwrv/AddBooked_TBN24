using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();

        string checkuser = "select count(*) from TableLogin where Name ='" + TextBoxUName.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        if (temp == 1)
        {

            string checkPasswordQuery = "select Password from TableLogin where Name ='" + TextBoxUName.Text + "'";
            SqlCommand passcom = new SqlCommand(checkPasswordQuery, con);
            string password = passcom.ExecuteScalar().ToString().Replace(" ", "");
            if (password == TextBoxPsswrd.Text)
            {
                Session["New"] = TextBoxUName.Text;


                Response.Redirect("DashBoardForm.aspx");
            }
            else
            {
                Response.Write("Password is not Correct");
            }
        }
        else
        {
            Response.Write("Username is not Correct");
        }
    }


       /* SqlCommand cmd = new SqlCommand("select * from TableLogin where Name =@Name and Password=@Password", con);
        cmd.Parameters.AddWithValue("@Name", TextBoxUName.Text);
        cmd.Parameters.AddWithValue("@Password", TextBoxPsswrd.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Panel1.Visible = true;
        }
        else
        {
            Label1.Visible = true;
        }

    } */
}