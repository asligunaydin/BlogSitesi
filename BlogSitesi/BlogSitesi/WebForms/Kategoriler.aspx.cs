using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace BlogSitesi.WebForms
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        string kategoriid = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            NpgsqlConnection baglanti = new NpgsqlConnection("server=localhost; port=5432; Database=dbBlog; user Id=postgres; password=12345");
            baglanti.Open();

            kategoriid = Request.QueryString["kategoriid"];
            islem = Request.QueryString["islem"];

            if (islem == "sil")
            {
              NpgsqlCommand cmdsil = new NpgsqlCommand("delete from kategori where kategoriid='"+kategoriid+"'", baglanti);
                cmdsil.ExecuteNonQuery();
            }

            //kategorileri datalist'e çekme

            NpgsqlCommand cmd = new NpgsqlCommand("SELECT * FROM kategori", baglanti);
            NpgsqlDataReader listt = cmd.ExecuteReader();
            dl_kategoriGetir.DataSource = listt;
            dl_kategoriGetir.DataBind();
            baglanti.Close();

            if (Page.IsPostBack == false)
            {
                panel_kategoriEkle.Visible = false;
                panel_kategoriDuzenle.Visible = false;
            }
        }

        protected void btnKategoriEkle_Click(object sender, EventArgs e)
        {
            string adi = txtKategoriAdi.Text;
            int sira =Convert.ToInt32(txtKategoriSira.Text);
            int adet = Convert.ToInt32(txtKategoriAdet.Text);
            NpgsqlConnection baglanti = new NpgsqlConnection("server=localhost; port=5432; Database=dbBlog; user Id=postgres; password=12345");
            NpgsqlCommand cmd = new NpgsqlCommand("INSERT INTO kategori (kategoriad,kategoriadet,kategorisira) VALUES (@adi,@adet,@sira)", baglanti);

            cmd.Parameters.AddWithValue("@adi", adi);
            cmd.Parameters.AddWithValue("@sira", sira);
            cmd.Parameters.AddWithValue("@adet", adet);

            baglanti.Open();
            cmd.ExecuteNonQuery();
            baglanti.Close();


        }
        protected void ktgrArti_Click(object sender, EventArgs e)
        {
            panel_kategoriEkle.Visible = true;
        }

        protected void ktgrEksi_Click(object sender, EventArgs e)
        {
            panel_kategoriEkle.Visible = false;
        }

        protected void dznlArtı_Click(object sender, EventArgs e)
        {
            panel_kategoriDuzenle.Visible = true;
        }

        protected void dznlEksi_Click(object sender, EventArgs e)
        {
            panel_kategoriDuzenle.Visible = false;
        }
    }
}