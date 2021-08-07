using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DogusCV3
{
    public partial class Giris_Form : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-BIVS41I;Initial Catalog=DogusCvDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From Tbl_Admin Where Kullanici=@P1 and Sifre=@P2",baglanti);
            komut.Parameters.AddWithValue("@P1",TextBox1.Text);
            komut.Parameters.AddWithValue("@P2",TextBox2.Text);

            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("Hakkinda.aspx");
            }
            else
            {
                Response.Write("Kullanıcı Adı yada Şifre Hatalı");
            }
            baglanti.Close();


        }
    }
}