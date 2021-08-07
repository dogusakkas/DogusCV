using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DogusCV3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        internal static string aspx;

        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_HakkindaTableAdapter dt = new DataSet1TableAdapters.Tbl_HakkindaTableAdapter();
            Repeater1.DataSource = dt.Hakkinda_Listele();
            Repeater1.DataBind();

            DataSet1TableAdapters.Tbl_DeneyimTableAdapter dt2 = new DataSet1TableAdapters.Tbl_DeneyimTableAdapter();
            Repeater2.DataSource = dt2.Deneyim_Listele();
            Repeater2.DataBind();

            DataSet1TableAdapters.Tbl_EgitimTableAdapter dt3 = new DataSet1TableAdapters.Tbl_EgitimTableAdapter();
            Repeater3.DataSource = dt3.Egitim_Listele();
            Repeater3.DataBind();

            DataSet1TableAdapters.Tbl_HobilerTableAdapter dt4 = new DataSet1TableAdapters.Tbl_HobilerTableAdapter();
            Repeater4.DataSource = dt4.Hobiler_Listele();
            Repeater4.DataBind();

            DataSet1TableAdapters.Tbl_SertifikalarTableAdapter dt5 = new DataSet1TableAdapters.Tbl_SertifikalarTableAdapter();
            Repeater5.DataSource = dt5.Sertifikalar_Listele();
            Repeater5.DataBind();

            DataSet1TableAdapters.Tbl_YeteneklerTableAdapter dt6 = new DataSet1TableAdapters.Tbl_YeteneklerTableAdapter();
            Repeater6.DataSource = dt6.Yetenekler_Listele();
            Repeater6.DataBind();

            DataSet1TableAdapters.Tbl_HakkindaTableAdapter dt7 = new DataSet1TableAdapters.Tbl_HakkindaTableAdapter();
            Repeater7.DataSource = dt7.Hakkinda_Listele();
            Repeater7.DataBind();
        }
    }
}