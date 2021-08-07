using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DogusCV3
{
    public partial class Admin_Sertifika : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_SertifikalarTableAdapter dt = new DataSet1TableAdapters.Tbl_SertifikalarTableAdapter();

            Repeater1.DataSource = dt.Sertifikalar_Listele();
            Repeater1.DataBind();
        }
    }
}