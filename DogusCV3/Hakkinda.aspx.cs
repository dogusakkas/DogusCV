using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DogusCV3
{
    public partial class Hakkinda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

                DataSet1TableAdapters.Tbl_HakkindaTableAdapter dt = new DataSet1TableAdapters.Tbl_HakkindaTableAdapter();

                TextBox1.Text = dt.Hakkinda_Listele()[0].Ad;
                TextBox2.Text = dt.Hakkinda_Listele()[0].Soyad;
                TextBox3.Text = dt.Hakkinda_Listele()[0].Adres;
                TextBox4.Text = dt.Hakkinda_Listele()[0].Mail;
                TextBox5.Text = dt.Hakkinda_Listele()[0].Telefon;
                TextBox6.Text = dt.Hakkinda_Listele()[0].Hakkinda;
                TextBox7.Text = dt.Hakkinda_Listele()[0].Fotograf;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_HakkindaTableAdapter dt1 = new DataSet1TableAdapters.Tbl_HakkindaTableAdapter();

            dt1.Hakkinda_Guncelle(TextBox1.Text, TextBox2.Text, TextBox3.Text,
                TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text);

            Response.Redirect("WebForm1.aspx");
        }
    }
}