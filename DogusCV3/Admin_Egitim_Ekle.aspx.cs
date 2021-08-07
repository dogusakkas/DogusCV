using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DogusCV3
{
    public partial class Admin_Egitim_Ekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_EgitimTableAdapter dt = new DataSet1TableAdapters.Tbl_EgitimTableAdapter();

            dt.Egitim_Ekle(Txt_Baslik.Text, Txt_Alt_Baslik.Text, Txt_Aciklama.Text, Txt_GNOrt.Text, Txt_Tarih.Text);
            Response.Redirect("Admin_Egitim.aspx");
        }
    }
}