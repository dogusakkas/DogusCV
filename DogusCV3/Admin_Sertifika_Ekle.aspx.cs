using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DogusCV3
{
    public partial class Admin_Sertifika_Ekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_SertifikalarTableAdapter dt = new DataSet1TableAdapters.Tbl_SertifikalarTableAdapter();

            dt.Sertifika_Ekle(Txt_Baslik.Text, Txt_Alinan_Kurum.Text, Txt_Tarih.Text);
            Response.Redirect("Admin_Sertifika.aspx");
        }
    }
}