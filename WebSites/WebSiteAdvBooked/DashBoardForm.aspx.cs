using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class DashBoardForm : System.Web.UI.Page
{
    SqlConnection con;

    public DashBoardForm(){
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
}

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        if (IsPostBack) {
            Loadgrid();
            Count();
        }

        if (Session["New"] != null)
        {
            Label_Welcome.Text = Session["New"].ToString();
        }
        else
        {
            Response.Redirect("LogIn.aspx");
        }

        Label_EndDate.Visible = false;

    }

    private void Count()
    {
        try
        {
            DataSet ds = new DataSet();
            ds.Clear();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * from TableDashBoard WHERE(((Status) = 'Running'))", con);
            LabelStatus.Text = da.Fill(ds, "Status").ToString();
        }
        catch (Exception ex)
        {
            LabelStatus.Text = ex.ToString();

        }
    }


    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
       // GridViewDashBrdForm.Rows[2].Visible = false;
    }



    private void Loadgrid()
    {
        con.Open();
        SqlCommand cmmmd = new SqlCommand("Select * from [TableAdvOffPeak]", con);
        SqlDataAdapter daaa = new SqlDataAdapter(cmmmd);
        DataSet dsss = new DataSet();
        daaa.Fill(dsss);
        con.Close();

        con.Open();
        SqlCommand cmmd = new SqlCommand("Select * from [Table_AdvPeak]", con);
        SqlDataAdapter daa = new SqlDataAdapter(cmmd);
        DataSet dss = new DataSet();
        daa.Fill(dss);
        con.Close();

        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from [TableAdvSuperOffPeak]", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();

    }

    protected void ButtonDlteArrngeGrdOffpk_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridViewArrngeOffpeak.Rows)
        {
            var Chkdelete = row.FindControl("Checkdelete") as CheckBox;
            if (Chkdelete.Checked)
            {
                var No = row.FindControl("No") as Label;
                SqlCommand cmd = new SqlCommand("Delete from [TableAdvOffPeak] where No=@No", con);
                cmd.Parameters.AddWithValue("@No", No.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        Loadgrid();
        GridViewArrngeOffpeak.DataBind();
        DropDownListArrngeoffpk.DataBind();
    }

    protected void ButtonDelteArrngeGrdpk_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridViewArrangePke.Rows)
        {
            var Chkdelete = row.FindControl("Checkdelete") as CheckBox;
            if (Chkdelete.Checked)
            {
                var No = row.FindControl("No") as Label;
                SqlCommand cmd = new SqlCommand("Delete from [Table_AdvPeak] where No=@No", con);
                cmd.Parameters.AddWithValue("@No", No.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        Loadgrid();
        GridViewArrangePke.DataBind();
        DropDownListArrngePk.DataBind();
    }

    protected void ButtonDelteArrngeGrdSpk_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridViewArrangSoffPeak.Rows)
        {
            var Chkdelete = row.FindControl("Checkdelete") as CheckBox;
            if (Chkdelete.Checked)
            {
                var No = row.FindControl("No") as Label;
                SqlCommand cmd = new SqlCommand("Delete from [TableAdvSuperOffPeak] where No=@No", con);
                cmd.Parameters.AddWithValue("@No", No.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        Loadgrid();
        GridViewArrangSoffPeak.DataBind();
        DropDownListArrngeSoffpk.DataBind();
    }

   



    protected void ButtonDashBrdAdd_Click(object sender, EventArgs e)
    {
        if (TextBoxEndsDate.Text == "") { Label_EndDate.Visible = true; }
        else
        {
            SqlCommand insert = new SqlCommand("insert into TableDashBoard(Company_Name, Duration, Spot_Off_Peak, Spot_Peak, Spot_Super_Off_Peak, Start_Date, End_Date, Amount, Status) values(@Company_Name, @Duration, @Spot_Off_Peak, @Spot_Peak, @Spot_Super_Off_Peak, @Start_Date, @End_Date, @Amount, @Status)", con);
            insert.Parameters.AddWithValue("@Company_Name", TextBoxCmpName.Text);
            insert.Parameters.AddWithValue("@Duration", TextBoxDrtion.Text);
            insert.Parameters.AddWithValue("@Spot_Off_Peak", DropDownListSptOffp.SelectedValue.ToString());
            insert.Parameters.AddWithValue("@Spot_Peak", DropDownListSptP.SelectedValue.ToString());
            insert.Parameters.AddWithValue("@Spot_Super_Off_Peak", DropDownListSptSuperOffP.SelectedValue.ToString());
            insert.Parameters.AddWithValue("@Start_Date", TextBoxStrtsDate.Text);
            insert.Parameters.AddWithValue("@End_Date", TextBoxEndsDate.Text);
            insert.Parameters.AddWithValue("@Amount", TextBoxAmmnt.Text);
            insert.Parameters.AddWithValue("@Status", DropDownListStats.SelectedValue.ToString());
            try
            {
                con.Open();
                insert.ExecuteNonQuery();
                GridViewDashBrdForm.DataBind();
            }
            catch
            {
                con.Close();
            }
        }
        Panel2.Visible = true;
    }
    
    protected void ButtonArngeOffpk_Click(object sender, EventArgs e)
    {

        string value = DropDownListSptOffp.SelectedValue.ToString();  // Get the dropdown value 
        int count = 0;
        int.TryParse(value, out count);  // cast the value to integer 

        for (int i = 0; i < count; i++)  // iterate it for the N times 
        {

            SqlCommand insert = new SqlCommand("insert into TableAdvOffPeak(Adv_Name, Duration) values(@Adv_Name, @Duration)", con);
            insert.Parameters.AddWithValue("@Adv_Name", TextBoxCmpName.Text);
            insert.Parameters.AddWithValue("@Duration", TextBoxDrtion.Text);

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
        
        Panel2.Visible = true;
        DropDownListArrngeoffpk.DataBind();
        GridViewArrngeOffpeak.DataBind();
        
    }

    protected void ButtonArngePk_Click(object sender, EventArgs e)
    {

        string value = DropDownListSptP.SelectedValue.ToString();  // Get the dropdown value 
        int count = 0;
        int.TryParse(value, out count);  // cast the value to integer

        for (int i = 0; i < count; i++)  // iterate it for the N times 
        {
            SqlCommand insert = new SqlCommand("insert into Table_AdvPeak(Adv_Name, Duration) values(@Adv_Name, @Duration)", con);

            insert.Parameters.AddWithValue("@Adv_Name", TextBoxCmpName.Text);
            insert.Parameters.AddWithValue("@Duration", TextBoxDrtion.Text);

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
            Panel2.Visible = true;
            DropDownListArrngePk.DataBind();
            GridViewArrangePke.DataBind();
            
        
    }

    protected void ButtonArngeSpk_Click(object sender, EventArgs e)
    {

        string value = DropDownListSptOffp.SelectedValue.ToString();  // Get the dropdown value 
        int count = 0;
        int.TryParse(value, out count);

        for (int i = 0; i < count; i++)  // iterate it for the N times 
        {
            SqlCommand insert = new SqlCommand("insert into TableAdvSuperOffPeak(Adv_Name, Duration) values(@Adv_Name, @Duration)", con);

            insert.Parameters.AddWithValue("@Adv_Name", TextBoxCmpName.Text);
            insert.Parameters.AddWithValue("@Duration", TextBoxDrtion.Text);

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
            Panel2.Visible = true;
            DropDownListArrngeSoffpk.DataBind();
            GridViewArrangSoffPeak.DataBind();
            
            }

    protected void ButtonRset_Click(object sender, EventArgs e)
    {
        TextBoxCmpName.Text="";
        TextBoxDrtion.Text="";
        DropDownListSptOffp.SelectedValue = "";
        DropDownListSptP.SelectedValue = "";
        DropDownListSptSuperOffP.SelectedValue = "";
        TextBoxStrtsDate.Text="";
        TextBoxEndsDate.Text="";
        TextBoxAmmnt.Text="";
        DropDownListStats.SelectedValue = "";
        Panel2.Visible = true;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
      //  GridViewDashBrdForm.AllowPaging = false;
      //  Panel2.Visible = false;        
     // Panel2.Visible = true;
        
    }
    protected void ImageButtonRefshDashBoard_Click(object sender, ImageClickEventArgs e)
    {
        GridViewDashBrdForm.DataBind();
        DropDownListArrngeoffpk.DataBind();
        GridViewArrngeOffpeak.DataBind();
        DropDownListArrngePk.DataBind();
        GridViewArrangePke.DataBind();
        DropDownListArrngeSoffpk.DataBind();
        GridViewArrangSoffPeak.DataBind();
        LabelStatus.Visible = true;

    }
    

    protected void LinkButtonDashBoard_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
      //  GridViewDashBrdForm.AllowPaging = false;
    }


    protected void ButtonClse_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;

    }

    protected void LinkButtonLogOut_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        //Response.Redirect("LogIn.aspx");
        Response.Write("Sign Out has been completed successfully..........");
        
    }




    protected void LinkButtonPagging_Click(object sender, EventArgs e)
    {
        GridViewDashBrdForm.AllowPaging = false;
    }
    protected void LinkButtonAllwPaging_Click(object sender, EventArgs e)
    {
        GridViewDashBrdForm.AllowPaging = true;
    }
}