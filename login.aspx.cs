using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string kad = TextBox1.Text; // kadi diye bir degisken tanımlıyoruz ve textbox1deki texti buna aktarıyoruz
            string sifre = TextBox2.Text;
            OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("App_Data\\kisiler.mdb"));
            OleDbCommand komut = new OleDbCommand("SELECT * FROM kullanicilar WHERE kad ='" + kad + "' and sifre ='" + sifre + "'", user_conn);
            user_conn.Open();

            OleDbDataReader oku = komut.ExecuteReader();
            if (oku.Read()) // eğer oku read kısmı doluysa burasını çalıştıracak
            {
                Session["kad"] = oku["kad"].ToString(); //kullanici adini kontrol ediyor veritabanindan
                Session["sifre"] = oku["sifre"].ToString();  // sifreyi kontrol ediyor veritabanından
                Label1.Visible = false;
                Response.Redirect("Default.aspx");  // yukaridakiler eşleşiyor ise anasayfaya yönlendirecek 
            }
            else  // boş veya eşleşmiyor ise burası çalışacak
            {
                Label1.Visible = true;  // label gözükecek ve bize giris basarisiz yazicak
                Label1.Text = "Giris basarisiz";
            }
            oku.Close();
            user_conn.Close();
        }
    }
}