using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace latCampurSari.latViewState
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        NorthwindModelDataContext data = new NorthwindModelDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.DataTextField = "CategoryName";
                DropDownList1.DataValueField = "CategoryID";
                DropDownList1.DataSource = data.Categories.ToList();
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }
    }
}