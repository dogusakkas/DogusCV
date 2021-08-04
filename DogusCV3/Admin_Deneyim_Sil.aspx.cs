using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DogusCV
{
    public partial class Admin_Deneyim_Sil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Request.QueryString["ID"]);

            DataSet1TableAdapters.Tbl_DeneyimTableAdapter dt = new DataSet1TableAdapters.Tbl_DeneyimTableAdapter();
            dt.Deneyim_Sil(Convert.ToInt16(id));
            Response.Redirect("Admin_Deneyimler.aspx");
            
        }
    }
}