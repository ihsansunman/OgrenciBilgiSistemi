using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class sorgulistele : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["kad"] == null)
                Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string command = SqlDataSource1.SelectCommand;

            if (DropDownList1.SelectedIndex == 0)
            {

                //  SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                SqlDataSource1.SelectCommand = "SELECT  * from kullanicilar where kad = '" + TextBox1.Text + " '";
                SqlDataSource1.DataBind();
            }
            if (DropDownList1.SelectedIndex == 1)
            {

                //  SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                SqlDataSource1.SelectCommand = "SELECT  * from kullanicilar where  ad like '%" + TextBox1.Text + "%'";
                SqlDataSource1.DataBind();
            }

            if (DropDownList1.SelectedIndex == 2)
            {

                //  SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                SqlDataSource1.SelectCommand = "SELECT  * from kullanicilar where  soyad like '%" + TextBox1.Text + "%'";
                SqlDataSource1.DataBind();
            }
            if (DropDownList1.SelectedIndex == 3)
            {

                //  SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                SqlDataSource1.SelectCommand = "SELECT  * from kullanicilar where  bolum like '%" + TextBox1.Text + "%'";
                SqlDataSource1.DataBind();
            }
        }
    }
}