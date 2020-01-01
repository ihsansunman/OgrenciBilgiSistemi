using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace WebApplication1
{
    public partial class kayitekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kad"] == null)
                Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str;
            OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("App_Data\\kisiler.mdb"));
            user_conn.Open();
            OleDbCommand komut = new OleDbCommand();
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "")
            {
                str = "insert into kullanicilar(kad,sifre,ad,soyad,bolum,dtarihi,sehir) values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + TextBox6.Text.ToString() + "','" + TextBox7.Text.ToString() + "')";
                komut.Connection = user_conn;
                komut.CommandText = str;
                int i = komut.ExecuteNonQuery();
                user_conn.Close();

                if (i == 1)
                {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('KAYIT BAŞARI İLE EKLENDİ')", true);
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                }
                else
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('HATALI ISLEM')", true);
            }
            else
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Bos alan birakilamaz.')", true);
        }
    }
}