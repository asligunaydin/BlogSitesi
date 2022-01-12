using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace BlogSitesi.WebForms
{
    public partial class MakaleGuncelle : System.Web.UI.Page
    {
        NpgsqlConnection baglanti = new NpgsqlConnection("server=localhost; port=5432; Database=dbBlog; user Id=postgres; password=12345");
        string makaleid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            makaleid = Request.QueryString["makaleid"];
            if (Page.IsPostBack==false)
            {
                //makale güncelleme işlemi için verileri çekme
                NpgsqlCommand cmdmakaleGetir = new NpgsqlCommand("select * from makale where makaleid='" + makaleid + "'", baglanti);
                baglanti.Open();
                NpgsqlDataReader mklGncl = cmdmakaleGetir.ExecuteReader();

                DataTable dataTablemkl = new DataTable("tablo");
                dataTablemkl.Load(mklGncl);

                DataRow row = dataTablemkl.Rows[0];//tek satır çektiği için ilk indisi getirmesi yeterli
                txtMakaleBaslikGncl.Text = row["makaleBaslik"].ToString();
                txtMakaleOzetGncl.Text = row["makaleozet"].ToString();
                ckeditormakaleGncl.Text = row["makaleicerik"].ToString();
                txtmakaleYorumSayisi.Text = row["makaleyorumsayisi"].ToString();
                baglanti.Close();
            }
        }

        protected void btnMakaleGncl_Click(object sender, EventArgs e)
        {
            NpgsqlCommand cmdmakaleGncl = new NpgsqlCommand("update makale set makalebaslik='"+txtMakaleBaslikGncl.Text+"', makaleozet='"+txtMakaleOzetGncl.Text+"', makaleicerik='"+ckeditormakaleGncl.Text+"', makaleyorumsayisi='"+txtmakaleYorumSayisi.Text+"' ", baglanti);
            baglanti.Open();
            cmdmakaleGncl.ExecuteNonQuery();
            Response.Redirect("Makaleler.aspx");
            baglanti.Close();
        }
    }
}