using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DogusCV3
{
    public partial class Admin_Yetenekler_Guncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            Txt_ID.Enabled = false;
            Txt_ID.Text = x.ToString();

            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.Tbl_YeteneklerTableAdapter dt = new DataSet1TableAdapters.Tbl_YeteneklerTableAdapter();

                Txt_Yetenekler.Text = dt.Yetenekler_Getir(Convert.ToInt16(x))[0].Yetenek;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_YeteneklerTableAdapter dt = new DataSet1TableAdapters.Tbl_YeteneklerTableAdapter();

            dt.Yetenekler_Guncelle(Txt_Yetenekler.Text,Convert.ToInt16(Txt_ID.Text));
            Response.Redirect("Admin_Yetenekler.aspx");
        }
    }
}