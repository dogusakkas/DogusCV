using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DogusCV3
{
    public partial class Admin_Sertifika_Sil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);

            DataSet1TableAdapters.Tbl_SertifikalarTableAdapter dt = new DataSet1TableAdapters.Tbl_SertifikalarTableAdapter();

            dt.Sertifikalar_Sil(Convert.ToInt16(x));
            Response.Redirect("Admin_Sertifika.aspx");
        }
    }
}