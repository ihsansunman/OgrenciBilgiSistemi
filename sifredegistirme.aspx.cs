using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace WebApplication1
{
    public partial class sifredegistirme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kad"] == null)
                Response.Redirect("login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sifre;
            OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("App_Data\\kisiler.mdb"));
            user_conn.Open();
            OleDbCommand komut = new OleDbCommand();
            komut.Connection = user_conn;
            if (TextBox2.Text != "" && TextBox3.Text != "")
            {
                if(TextBox2.Text == TextBox3.Text)
                {
                    sifre = TextBox2.Text;
                  komut.Connection = user_conn;
                komut.CommandText = "UPDATE kullanicilar SET sifre =('" + sifre + "') Where kad=('" + Session["kad"] + "')";
                int i = komut.ExecuteNonQuery();
                user_conn.Close();
                if (i == 1)
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Sifre Basarıyla Degistirildi')", true);
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                }
                }
                else
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Girdiginiz sifreler uyusmuyor,tekrar deneyiniz')", true);
            }
        }
    }
}