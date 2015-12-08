using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace latCampurSari.latLookup.cara1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        NorthwindModelDataContext data = new NorthwindModelDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            var selectCategories = (from slt in data.Categories
                                    where slt.CategoryName.Contains(txtCategoryName.Text)
                                    select new { slt.CategoryID, slt.CategoryName }
                                    );
            GridView1.DataSource = selectCategories.ToList();
            GridView1.DataBind();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label Label1 = e.Row.FindControl("Label1") as Label;
                Label Label2 = e.Row.FindControl("Label2") as Label;
                HiddenField hidcategoryId = e.Row.FindControl("hidcategoryId") as HiddenField;

                hidcategoryId.Value = String.Format("{0}#{1}", Label1.Text, Label2.Text);
            }
        }
    }
}