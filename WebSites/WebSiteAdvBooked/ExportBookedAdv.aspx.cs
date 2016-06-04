using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

public partial class ExportBookedAdv : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            if (!IsPostBack)
            {
                BindGridViewData();
            }
        }
    }

    private void BindGridViewData()
    {
        String strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from TableAdvOffPeak";
        cmd.CommandText = "select * from Table_AdvPeak";
        cmd.CommandText = "select * from TableAdvSuperOffPeak";
        cmd.CommandText = "select * from TableDashBoard";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        try
        {
            con.Open();
            sda.Fill(ds);

            
                
            
            
          //  GridViewHistoryOffPeakhour.EmptyDataText = "No Records Show";
         //   GridViewHistoryPeak.EmptyDataText = "No Records Show";
          //  GridViewAdvHistorySuperOffPeak.EmptyDataText = "No Records Show";
           // GridViewHistoryOffPeakhour.DataSource = ds;
           // GridViewHistoryOffPeakhour.DataBind();

        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
            con.Dispose();
        }  
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }

    protected void ButtonPrint_Click(object sender, ImageClickEventArgs e)
    {
   

            Response.ClearContent();

            Response.Buffer = true;

            Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "Exported_File.xls"));

            Response.ContentType = "application/ms-excel";

            StringWriter sw = new StringWriter();

            HtmlTextWriter htw = new HtmlTextWriter(sw);

            // GridViewHistoryOffPeakhour.AllowPaging = false;



            // CHANGE THE HEADER ROW BACK TO WRITE COLORS

         //   GridViewHistoryOffPeakhour.HeaderRow.Style.Add("background-color", "#FFFFFF");
         //   GridViewHistoryPeak.HeaderRow.Style.Add("background-color", "#FFFFFF");
          //  GridViewAdvHistorySuperOffPeak.HeaderRow.Style.Add("background-color", "#FFFFFF");


            // APPLYING STYLE TO GRIDVIEW HEADER CELLS 

            if (!this.IsPostBack)
            {

                for (int i = 0; i < GridViewHistoryOffPeakhour.HeaderRow.Cells.Count; i++)
                {
                    GridViewHistoryOffPeakhour.HeaderRow.Cells[i].Style.Add("background-color", "#FFF803");
                }

            } else if (!this.IsPostBack)  {



                for (int i = 0; i < GridViewHistoryPeak.HeaderRow.Cells.Count; i++)
                {
                    GridViewHistoryPeak.HeaderRow.Cells[i].Style.Add("background-color", "#5BC43B");
                }

            } else if (!this.IsPostBack){

                for (int i = 0; i < GridViewAdvHistorySuperOffPeak.HeaderRow.Cells.Count; i++)
                {
                    GridViewAdvHistorySuperOffPeak.HeaderRow.Cells[i].Style.Add("background-color", "#FF0000");
                }

           }   else if (!this.IsPostBack)  {
                    
               
               int j = 1;

                 

                    // SET ALTERNATE ROW COLORS

                    foreach (GridViewRow gvrow in GridViewHistoryOffPeakhour.Rows)
                    {

                        gvrow.BackColor = System.Drawing.Color.White;

                        if (j <= GridViewHistoryOffPeakhour.Rows.Count)
                        {

                            if (j % 1 != 0)
                            {

                                for (int k = 0; k < gvrow.Cells.Count; k++)
                                {

                                    gvrow.Cells[k].Style.Add("background-color", "#DBDBDB");

                                }

                            }

                        }

                        j++;

                    }


                } else if (!this.IsPostBack) {

                    int j = 1;

                foreach (GridViewRow gvrow in GridViewHistoryPeak.Rows)
                {

                    gvrow.BackColor = System.Drawing.Color.White;

                    if (j <= GridViewHistoryPeak.Rows.Count)
                    {

                        if (j % 1 != 0)
                        {

                            for (int k = 0; k < gvrow.Cells.Count; k++)
                            {

                                gvrow.Cells[k].Style.Add("background-color", "#DBDBDB");

                            }

                        }

                    }

                    j++;

                }


                }  else if (!this.IsPostBack)  {

            int j = 1;

            foreach (GridViewRow gvrow in GridViewAdvHistorySuperOffPeak.Rows)
            {

                gvrow.BackColor = System.Drawing.Color.White;

                if (j <= GridViewAdvHistorySuperOffPeak.Rows.Count)
                {

                    if (j % 1 != 0)
                    {

                        for (int k = 0; k < gvrow.Cells.Count; k++)
                        {

                            gvrow.Cells[k].Style.Add("background-color", "#DBDBDB");

                        }

                    }

                }

                j++;
            }

        }


                GridViewHistoryOffPeakhour.RenderControl(htw);
                GridViewHistoryPeak.RenderControl(htw);
                GridViewAdvHistorySuperOffPeak.RenderControl(htw);
                GridView1.RenderControl(htw);
                Response.Write(sw.ToString());

                Response.End();


            
        
    }
}