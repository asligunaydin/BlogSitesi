using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Npgsql;

namespace BlogSitesi.WebForms
{
    public partial class Makaleler : System.Web.UI.Page
    {
        NpgsqlConnection baglanti = new NpgsqlConnection("server=localhost; port=5432; Database=dbBlog; user Id=postgres; password=12345");
        string makaleid = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            // sayfalar arası bilgi taşımak için arayüz bağlantısı
            makaleid = Request.QueryString["makaleid"];
            islem = Request.QueryString["islem"];

            if (islem == "sil")
            {
                NpgsqlCommand cmdMSil = new NpgsqlCommand("delete from makale where makaleid='"+makaleid+"'", baglanti);
                baglanti.Open();
                cmdMSil.ExecuteNonQuery();
                baglanti.Close();
            }

            if (Page.IsPostBack == false)
            {




                panel_makaleEkle.Visible = false;
                panel_makaleDuzenle.Visible = false;
               
                //kategorileri getir               
                NpgsqlCommand cmd = new NpgsqlCommand("select * from kategori", baglanti);
                baglanti.Open();
                NpgsqlDataReader listt = cmd.ExecuteReader();
                ddl_kategori.DataTextField = "kategoriad";
                ddl_kategori.DataValueField = "kategoriid";
                ddl_kategori.DataSource = listt;
                ddl_kategori.DataBind();
                baglanti.Close();

                //makale getir
                NpgsqlCommand cmdGetir = new NpgsqlCommand("select * from makale", baglanti);
                baglanti.Open();
                NpgsqlDataReader mgetir = cmdGetir.ExecuteReader();
                dl_makaleGetir.DataSource = mgetir;
                dl_makaleGetir.DataBind();
                baglanti.Close();

            }
        }

        protected void mklArtı_Click(object sender, EventArgs e)
        {
            panel_makaleEkle.Visible = true;
        }

        protected void mklEksi_Click(object sender, EventArgs e)
        {
            panel_makaleEkle.Visible = false;
            panel_makaleDuzenle.Visible = false;
        }

        protected void btnMakaleEkle_Click(object sender, EventArgs e)
        {
         
            
            NpgsqlConnection baglanti = new NpgsqlConnection("server=localhost; port=5432; Database=dbBlog; user Id=postgres; password=12345");
            NpgsqlCommand cmdekle = new NpgsqlCommand("insert into makale(makaleBaslik,makaleOzet,makaleIcerik,kategoriid)" +
                " values('"+txtMakaleBaslik.Text+"', '"+txtMakaleOzet.Text+"','"+ckeditor.Text+"','"+ddl_kategori.SelectedValue+"')", baglanti);
            baglanti.Open();
            cmdekle.ExecuteNonQuery();
            Response.Redirect("Makaleler.aspx");
            baglanti.Close();
        }

        protected void mduzenleArti_Click(object sender, EventArgs e)
        {
            panel_makaleDuzenle.Visible = true;
        }

        protected void mduzenleEksi_Click(object sender, EventArgs e)
        {
            panel_makaleDuzenle.Visible = false;
        }
    }
}