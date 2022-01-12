using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace BlogSitesi.MasterPages
{
    public partial class Yonetici : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //kategoriler
            NpgsqlConnection baglanti = new NpgsqlConnection("server=localhost; port=5432; Database=dbBlog; user Id=postgres; password=12345");
            NpgsqlCommand cmdkategoriGetir = new NpgsqlCommand("Select * from kategori", baglanti);
            baglanti.Open();
            NpgsqlDataReader drkategori = cmdkategoriGetir.ExecuteReader();
            dl_Kategori.DataSource = drkategori;
            dl_Kategori.DataBind();
            baglanti.Close();
        }
    }
}