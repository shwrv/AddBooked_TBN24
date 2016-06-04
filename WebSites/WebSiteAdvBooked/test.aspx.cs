using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml.Linq;
using System.Data;
using System.StubHelpers;
using System.Collections.Specialized;
using System.Text;


public partial class test : System.Web.UI.Page
{
    SqlConnection con;

    public test() {

    con = new SqlConnection();
    con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

    }


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) {
            Loadgrid();
            CountNum();
        }

       // bindgrid();
       // GridView1.Rows[0].Visible = false;
       // GridView1.Rows[1].Visible = false;
       // GridView1.Rows[2].Visible = false;
       // ViewState["Count"] = 0;

        Label3.Visible = false;
    }

    private void CountNum()
    {
        
        try
        {                        
            DataSet ds = new DataSet();
            ds.Clear();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * from Test WHERE(((Name) = 'fggfg'))", con);
            lblrecords.Text = da.Fill(ds, "Name").ToString();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            lblrecords.Text = ex.ToString();
            GridView1.DataBind();
            
        }
    }



    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {

        
            
    }







    private void Loadgrid()
    {
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from [Test]", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        //GridView1.DataSource = ds;
        GridView1.DataBind();
        

    }
    protected void ButtonDlete_Click(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        foreach (GridViewRow row in GridView1.Rows) { var Chkdelete = row.FindControl("Chkdelete") as CheckBox;
        if (Chkdelete.Checked) { var id = row.FindControl("Id") as Label;
        SqlCommand cmd = new SqlCommand("Delete from [Tabletest] where Id=@Id", con);
        cmd.Parameters.AddWithValue("@Id", id.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        }
        }
        Loadgrid();
        GridView1.DataBind();
        DropDownList3.DataBind();
    }
    
    protected void Buttonrefresh_Click(object sender, EventArgs e)
    {
        
        GridView1.Sort("", SortDirection.Ascending);
        GridView1.DataBind();
        DropDownList3.DataBind();
        

        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == "") { Label3.Visible = true; }
        else
        {
            con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

            string value = DropDownList4.SelectedValue.ToString();  // Get the dropdown value 
            int count = 0;
            int.TryParse(value, out count);  // cast the value to integer 

            for (int i = 0; i < count; i++)  // iterate it for the N times 
            {

                SqlCommand insert = new SqlCommand("insert into Test(Name, Username) values(@Name, @Username)", con);
                insert.Parameters.AddWithValue("@Name", TextBox1.Text);
                insert.Parameters.AddWithValue("@Username", TextBox2.Text);

                try
                {
                    con.Open();
                    insert.ExecuteNonQuery();

                }
                catch
                {
                    i--;
                }
                finally
                {
                    con.Close();
                }

            }

            GridView1.DataBind();
            // Button1.Attributes.Add("onclick", "alert(document.forms[0].Hiddenfield1.value);");
        }
    }

    private void BindGrid(int rowcount)
    {
        
    }

             
        /* SqlCommand insert = new SqlCommand("insert into Tabletest(Name, Username, Password) values(@Name, @Username, @Password)", con);
            insert.Parameters.AddWithValue("@Name", TextBox1.Text);
            insert.Parameters.AddWithValue("@Username", TextBox2.Text);
            insert.Parameters.AddWithValue("@Password", TextBox3.Text);

            con.Open();
            insert.ExecuteNonQuery();
            con.Close(); */
        
        //    ViewState["count"] = Convert.ToInt32(ViewState["count"]) + 1;
        //    Label1.Text = ViewState["count"].ToString();
           
         /* GridView1.DataBind();
            DropDownList3.DataBind();   */
        
       // Button Button1 = (Button)sender;
     //   Button1.Text = (Int32.Parse(Button1.Text) + 1).ToString();


   



    protected void Button2_Click(object sender, EventArgs e)
{
     //   ViewState["count"] = null;
     //   Label1.Text = "0";
}

   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {
      
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Response.Redirect("test.aspx");
    }
    

   /* private void bindgrid()
    {

        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        con.Open();

        str = "select * from Test";

        SqlCommand com;
        SqlDataAdapter sqlda;
        DataSet ds;
        com = new SqlCommand(str, con);

        sqlda = new SqlDataAdapter(com);

        ds = new DataSet();

        sqlda.Fill(ds, "Test");

        GridView1.DataMember = "Test";

        GridView1.DataSource = ds;

        GridView1.DataBind();

        Hiddenfield1.Value = GridView1.Rows.Count.ToString();

        con.Close();

    } */
        
        
        
        /* if (e.Row.RowType != DataControlRowType.DataRow) return;

        var c = e.Row.FindControl("IdOfControl") as Label;
        if (c != null)
        {
            if (c.Text == "ABC")
                e.Row.BackColor = GetColor("Gray");

            if (c.Text == "BCA")
                e.Row.BackColor = GetColor("Green");
        }
    }

    private Color GetColor(string color)
    {
        return Color.FromName(color); } */














    protected void btCount_Click(object sender, EventArgs e)
    {
        Response.Redirect("test.aspx");
    }
}

