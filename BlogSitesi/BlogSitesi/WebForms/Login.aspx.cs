using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace BlogSitesi.WebForms
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string yoneticiEposta = textboxKimlik.Text;
            string sifre = textboxSifre.Text;

            NpgsqlConnection baglanti = new NpgsqlConnection("server=localhost; port=5432; Database=dbBlog; user Id=postgres; password=12345");
            NpgsqlCommand cmd = new NpgsqlCommand("Select * from yonetici where yoneticiEposta=@yoneticiEposta AND yoneticiSifre=@sifre", baglanti);

            cmd.Parameters.AddWithValue("@yoneticiEposta", yoneticiEposta);
            cmd.Parameters.AddWithValue("@sifre", sifre);
            baglanti.Open();
            
            NpgsqlDataReader listt = cmd.ExecuteReader();
            if(listt.HasRows)
            {
                while(listt.Read())
                {
                    Session["yoneticiEposta"] = listt["yoneticiEposta"];
                    Response.Redirect("Kategoriler.aspx");
                }
            }
            else
            {
                label1.Text = "Hatalı Giriş!";
            }
            cmd.Dispose();
            listt.Close();


        }
    }
}