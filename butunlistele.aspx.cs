using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace WebApplication1
{
    public partial class butunlistele : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kad"] == null)
                Response.Redirect("Login.aspx");
            else
            {
                OleDbConnection user_conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=" + Server.MapPath("App_Data\\kisiler.mdb"));
                OleDbCommand komut = new OleDbCommand("SELECT kad,ad,soyad,bolum,dtarihi,sehir FROM kullanicilar", user_conn);

                user_conn.Open();

                OleDbDataReader oku = komut.ExecuteReader();
                GridView1.DataSource = oku;
                GridView1.DataBind();
                user_conn.Close();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}