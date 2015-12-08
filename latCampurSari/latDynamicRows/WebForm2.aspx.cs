using System;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace latCampurSari.latDynamicRows
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        static DataTable dt;
        static int intLoop;
        void InitDataTable()
        {
            intLoop = 0;
            dt = new DataTable();

            dt.Columns.Add("Id", typeof(int));
            dt.Columns.Add("Nama", typeof(string));
            dt.Columns.Add("Kelas", typeof(string));
        }
        void GetData()
        {
            ++intLoop;
            DataRow dr = dt.NewRow();
            //dr[0] = intLoop;
            //dr[1] = String.Format("Ismail{0}", intLoop);
            dr[2] = String.Format("{0}KA11", intLoop);

            dt.Rows.Add(dr);

            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InitDataTable();
            }
        }

        protected void btnTambah_Click(object sender, EventArgs e)
        {
            GetData();
        }
    }
}