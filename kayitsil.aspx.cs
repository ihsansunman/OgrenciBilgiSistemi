using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace WebApplication1
{
    public partial class kayitsil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kad"] == null)
                Response.Redirect("login.aspx");
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("App_Data\\kisiler.mdb"));
            user_conn.Open();
            OleDbCommand komut = new OleDbCommand();
            komut.Connection = user_conn;
            if (TextBox1.Text != "")
            {
                komut.Connection = user_conn;
                komut.CommandText = "DELETE FROM kullanicilar Where kad = ('" + TextBox1.Text + "')";
                int i = komut.ExecuteNonQuery();
                user_conn.Close();
                if (i == 1)
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Kaydiniz silinmistir.')", true);
                else
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Kaydiniz silinemedi tekrar deneyiniz.')", true);
            }
        }
    }
}