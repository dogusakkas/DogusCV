﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DogusCV
{
    public partial class Admin_Egitim_Guncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            Txt_ID.Enabled = false;
            Txt_ID.Text = x.ToString();

            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.Tbl_EgitimTableAdapter dt = new DataSet1TableAdapters.Tbl_EgitimTableAdapter();

                Txt_Baslik.Text = dt.Egitim_Getir(Convert.ToInt16(x))[0].Baslik;
                Txt_Alt_Baslik.Text = dt.Egitim_Getir(Convert.ToInt16(x))[0].AltBaslik;
                Txt_Aciklama.Text = dt.Egitim_Getir(Convert.ToInt16(x))[0].Aciklama;
                Txt_GNOrt.Text = dt.Egitim_Getir(Convert.ToInt16(x))[0].GNot;
                Txt_Tarih.Text = dt.Egitim_Getir(Convert.ToInt16(x))[0].Tarih;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Tbl_EgitimTableAdapter dt = new DataSet1TableAdapters.Tbl_EgitimTableAdapter();

            dt.Egitim_Guncelle(Txt_Baslik.Text,Txt_Alt_Baslik.Text,
                Txt_Aciklama.Text,Txt_GNOrt.Text,Txt_Tarih.Text,Convert.ToInt16(Txt_ID.Text));
            Response.Redirect("Admin_Egitim.aspx");
        }
    }
}