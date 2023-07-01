using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TEJAS_WEBSITE_DOTNET
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\TEJAS_WEBSITE_DOTNET\App_Data\Database1.mdf;Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string query = "SELECT * FROM tejas WHERE Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    Session["username"] = TextBox1.Text;
                    Server.Transfer("Dashboard.aspx");

                }
                else
                {
                    Response.Redirect("login.aspx");
                }
                con.Close();
            }
            catch (Exception)
            {
                throw;
            }

        }
    }
    }
