using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DogusCV
{
    public partial class Admin_Yetenekler_Sil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);

            DataSet1TableAdapters.Tbl_YeteneklerTableAdapter dt = new DataSet1TableAdapters.Tbl_YeteneklerTableAdapter();

            dt.Yetenekler_Sil(Convert.ToInt16(x));
            Response.Redirect("Admin_Yetenekler.aspx");
        }
    }
}