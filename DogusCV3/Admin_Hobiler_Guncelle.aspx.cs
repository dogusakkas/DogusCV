using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DogusCV3
{
    public partial class Admin_Hobiler_Guncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            Txt_ID.Enabled = false;
            Txt_ID.Text = x.ToString();

            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.Tbl_HobilerTableAdapter dt = new DataSet1TableAdapters.Tbl_HobilerTableAdapter();

                Txt_Hobi.Text = dt.Hobiler_Getir(Convert.ToInt16(x))[0].Hobi;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_HobilerTableAdapter dt = new DataSet1TableAdapters.Tbl_HobilerTableAdapter();

            dt.Hobiler_Güncelle(Txt_Hobi.Text, Convert.ToInt16(Txt_ID.Text));
            Response.Redirect("Admin_Hobiler.aspx");
        }
    }
}