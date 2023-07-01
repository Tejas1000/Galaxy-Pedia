using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TEJAS_WEBSITE_DOTNET
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\TEJAS_WEBSITE_DOTNET\App_Data\Database1.mdf;Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string query = "INSERT INTO tejas VALUES('" + name.Text + "','" + email.Text + "','" + user_name.Text + "','" + pass.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("login.aspx");
            }
            catch (Exception)
            {
                throw;
            }

        }
    }
}