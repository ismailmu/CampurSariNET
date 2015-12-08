using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace latCampurSari.latWebControl
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        NorthwindModelDataContext data = new NorthwindModelDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            ctl.GridName = grv.ID;
            if (!IsPostBack)
            {
                grv.DataSource = data.Products.ToList();
                grv.DataBind();
            }
        }
    }
}