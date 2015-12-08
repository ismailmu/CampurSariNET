using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace latCampurSari.latDynamicRows
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static int intRows = 0;
        static TextBox[] txt;
        static Table tbl;
        static TableRow tRow;
        static TableCell tCell;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txt = new TextBox[50];
                tbl = new Table();
                intRows = 0;
                tbl.BorderWidth = Unit.Pixel(1);
                tbl.Width = Unit.Percentage(100);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Coding1();
            //Coding2();
        }
        void Coding1()
        {
            for (int i = 0; i <= 10; i++)
            {
                tRow = new TableRow();
                tbl.Rows.AddAt(intRows, tRow);

                for (int j = 0; j <= 5; j++)
                {
                    tCell = new TableCell();
                    //tCell.Text = String.Format("Row {0}, Cell {1}", i, j);
                    txt[i] = new TextBox();
                    txt[i].Text = String.Format("Row {0}, Cell {1}", i, j);
                    txt[i].Width = Unit.Pixel(120);
                    txt[i].ID = i.ToString();
                    tCell.Controls.Add(txt[i]);
                    tRow.Cells.Add(tCell);
                }
            }
            tbl.DataBind();
        }
        void Coding2()
        {
            intRows++;
            TableRow tRow = new TableRow();
            tbl.Rows.Add(tRow);
            for (int j = 0; j <= 5; j++)
            {
                TableCell tCell = new TableCell();
                //tCell.Text = String.Format("Row {0}, Cell {1}", intRows, j);
                txt[intRows] = new TextBox();
                txt[intRows].Text = String.Format("Row {0}, Cell {1}", intRows, j);
                txt[intRows].Width = Unit.Pixel(120);
                tCell.Controls.Add(txt[intRows]);
                tRow.Cells.Add(tCell);
            }
        }
    }
}