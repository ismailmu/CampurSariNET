using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace latCampurSari.latImage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSet ds = null;
            using (SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=Northwind;User ID=sa;Password=sa123"))
            {
                conn.Open();
                using (SqlDataAdapter adpt = new SqlDataAdapter(String.Format("SELECT Picture FROM Categories WHERE CategoryId = {0}",DropDownList1.SelectedValue),conn))
                {
                    ds = new DataSet();
                    adpt.Fill(ds);
                }
            }
            DataView dv = new DataView(ds.Tables[0]);
            byte[] pic = (byte[])dv[0][0]; 

            System.IO.MemoryStream ms = new System.IO.MemoryStream();
            // 78 is the size of the OLE header for Northwind images.
            int offset = 78;
            ms.Write(pic, offset, pic.Length - offset);

            System.Drawing.Bitmap bmp = new System.Drawing.Bitmap(ms);

            //Response.ContentType = "image/jpeg";
            bmp.Save(String.Format("{0}/images/{1}.jpeg",Request.PhysicalApplicationPath, DropDownList1.Text), System.Drawing.Imaging.ImageFormat.Jpeg);
            ms.Close();

            Image1.ImageUrl = String.Format("~/images/{0}.jpeg", DropDownList1.Text);
        }
    }
}