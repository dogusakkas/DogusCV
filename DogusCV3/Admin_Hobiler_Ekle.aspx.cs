using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DogusCV
{
    public partial class Admin_Hobiler_Ekle : System.Web.UI.Page
    {

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_HobilerTableAdapter dt = new DataSet1TableAdapters.Tbl_HobilerTableAdapter();

            dt.Hobi_Ekle(Txt_Hobiler.Text);
            Response.Redirect("Admin_Hobiler.aspx");
        }
    }
}