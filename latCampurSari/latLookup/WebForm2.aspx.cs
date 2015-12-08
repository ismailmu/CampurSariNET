using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace latCampurSari.latLookup
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        private NorthwindModelDataContext data = new NorthwindModelDataContext();
        private static string strDiv = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString.Count > 0)
                    strDiv = Request.QueryString[0].ToString().Trim();
                else
                    Response.Redirect("/LatLookup/WebForm1.aspx");
            }
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            var selectCategory = (from sltCategory in data.Categories
                                  select new { CategoryId = sltCategory.CategoryID, CategoryName = sltCategory.CategoryName });
            if (!String.IsNullOrEmpty(txtCategoryIdLookup.Text) && String.IsNullOrEmpty(txtCategoryNameLookup.Text))
            {
             selectCategory = (from sltCategory in data.Categories
                                  where sltCategory.CategoryID == Convert.ToInt32(txtCategoryIdLookup.Text)
                               select new { CategoryId = sltCategory.CategoryID, CategoryName = sltCategory.CategoryName });
            }
            else if (String.IsNullOrEmpty(txtCategoryIdLookup.Text) && !String.IsNullOrEmpty(txtCategoryNameLookup.Text))
            {
                selectCategory = (from sltCategory in data.Categories
                                  where sltCategory.CategoryName.StartsWith(txtCategoryNameLookup.Text.Trim())
                                  select new { CategoryId = sltCategory.CategoryID, CategoryName = sltCategory.CategoryName });
            }
            else if (!String.IsNullOrEmpty(txtCategoryIdLookup.Text) && !String.IsNullOrEmpty(txtCategoryNameLookup.Text))
            {
                selectCategory = (from sltCategory in data.Categories
                                  where sltCategory.CategoryID == Convert.ToInt32(txtCategoryIdLookup.Text) &&
                                    sltCategory.CategoryName.StartsWith(txtCategoryNameLookup.Text.Trim())
                                  select new { CategoryId = sltCategory.CategoryID, CategoryName = sltCategory.CategoryName });
            }
            GridView1.DataSource = selectCategory.ToList();
            GridView1.DataBind();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton lnkBtnCategoryId = (LinkButton)e.Row.FindControl("lnkBtnCategoryId");
                if (lnkBtnCategoryId != null)
                {
                    LinkButton lnkBtnCategoryName = (LinkButton)e.Row.FindControl("lnkBtnCategoryName");
                    lnkBtnCategoryId.Attributes.Add("onclick", String.Format("pilihData('{0}','{1}')", strDiv, lnkBtnCategoryId.Text + "," + lnkBtnCategoryName.Text));
                    lnkBtnCategoryName.Attributes.Add("onclick", String.Format("pilihData('{0}','{1}')", strDiv, lnkBtnCategoryId.Text + "," + lnkBtnCategoryName.Text));
                }
            }
        }
    }
}