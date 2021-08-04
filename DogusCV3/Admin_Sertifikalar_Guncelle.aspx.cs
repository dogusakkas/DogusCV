using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DogusCV
{
    public partial class Admin_Sertifikalar_Guncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            Txt_ID.Enabled = false;
            Txt_ID.Text = x.ToString();

            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.Tbl_SertifikalarTableAdapter dt = new DataSet1TableAdapters.Tbl_SertifikalarTableAdapter();

                Txt_Baslik.Text = dt.Sertifika_Getir(Convert.ToInt16(x))[0].Baslik;
                Txt_Alinan_Kurum.Text = dt.Sertifika_Getir(Convert.ToInt16(x))[0].AlinanKurum;
                Txt_Tarih.Text = dt.Sertifika_Getir(Convert.ToInt16(x))[0].Tarih;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_SertifikalarTableAdapter dt = new DataSet1TableAdapters.Tbl_SertifikalarTableAdapter();

            dt.Sertifikalar_Guncelle(Txt_Baslik.Text,Txt_Alinan_Kurum.Text,Txt_Tarih.Text,Convert.ToInt16(Txt_ID.Text));
            Response.Redirect("Admin_Sertifika.aspx");
            
        }
    }
}