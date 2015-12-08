using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace latCampurSari.latWebControl
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        public string GridName { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            GridView grv = (GridView)Page.FindControl(GridName);
            NorthwindModelDataContext data = new NorthwindModelDataContext();
            var sltProduct = (from p in data.Products
                              select p).ToList();

            if (txtSearch.Text.Trim().Length > 0)
            {
                if (cboFields.SelectedIndex == 0) {
                    sltProduct = (from p in data.Products
                                  where p.ProductName.Contains(txtSearch.Text.Trim())
                                  select p).ToList();
                }

                if (cboFields.SelectedIndex == 1)
                {
                    sltProduct = (from p in data.Products
                                  where p.UnitPrice == Convert.ToDecimal(txtSearch.Text.Trim())
                                  select p).ToList();
                }
            }
            grv.DataSource = sltProduct;
            grv.DataBind();
        }
    }
}