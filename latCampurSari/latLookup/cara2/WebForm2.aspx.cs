using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace latCampurSari.latLookup.cara2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        NorthwindModelDataContext data = new NorthwindModelDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                HyperLink hypCategoryId = e.Row.FindControl("hypCategoryId") as HyperLink;
                HyperLink hypCategoryName = e.Row.FindControl("hypCategoryName") as HyperLink;


                string strData = String.Format("pilih('{0}','{1}')", hypCategoryId.Text, hypCategoryName.Text);
                hypCategoryId.Attributes.Add("onclick", strData);
                hypCategoryName.Attributes.Add("onclick", strData);

            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            var selectCategories = (from slt in data.Categories
                                    where slt.CategoryName.Contains(txtCategoryName.Text)
                                    select new { slt.CategoryID, slt.CategoryName });

            GridView1.DataSource = selectCategories.ToList();
            GridView1.DataBind();
        }
    }
}