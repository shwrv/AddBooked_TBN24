using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.StubHelpers;
using System.Collections.Specialized;
using System.Text;
using iTextSharp.text;
using System.Drawing.Design;


public partial class AdvBookedPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        DropDownListOffPeak.DataBind();
        GridViewAdvOffPeak.DataBind();
        DropDownListPeak.DataBind();
        GridViewAdvPeakhour.DataBind();
        DropDownListSuperOffPeak.DataBind();
        GridviewAdvSprOffPeak.DataBind();
        GridView1.DataBind();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            DateTime date = Convert.ToDateTime(GridView1.Rows[i].Cells[8].Text);
            if (date < DateTime.Now)
            {
                GridView1.Rows[i].BackColor = System.Drawing.Color.Red;
                GridView1.Rows[i].Visible = true;
            }
            else if (date <= DateTime.Now.AddDays(2))
            {
                GridView1.Rows[i].BackColor = System.Drawing.Color.Pink;
                GridView1.Rows[i].Visible = true;
            }
            else if (date <= DateTime.Now.AddDays(5)) 
            {
                GridView1.Rows[i].BackColor = System.Drawing.Color.Yellow;
                GridView1.Rows[i].Visible = true;
            }
            
            else
            {
                GridView1.Rows[i].Visible = false;
            }
        }


    }

}