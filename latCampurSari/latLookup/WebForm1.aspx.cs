using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace latCampurSari.latLookup
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private NorthwindModelDataContext data = new NorthwindModelDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnBrowseCategory.Attributes.Add("onclick", String.Format("tampil('{0}')", btnBrowseCategory.ID));
            }
        
        }

        protected void btnSearchCategory_Click(object sender, EventArgs e)
        {
            searchCategory();
        }
        void searchCategory()
        {
            if (!String.IsNullOrEmpty(txtCategoryId.Text))
            {
                var selectProduct = (from sltProduct in data.Products
                                     where sltProduct.CategoryID == Convert.ToInt32(txtCategoryId.Text)
                                     select sltProduct);

                GridView1.DataSource = selectProduct.ToList();
                GridView1.DataBind();
            }
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            searchCategory();
        }
    }
}