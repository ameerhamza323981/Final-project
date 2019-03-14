using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Managment_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            whenLoginButtonCLick();
        }

        private void whenLoginButtonCLick()
        {

            SqlConnection con = DataBaseConnection.dataBaseConnection();
            using (con)
            {
                SqlCommand cmd = new SqlCommand("select * from Login", con);
                using (cmd)
                {
                    cmd.CommandType = System.Data.CommandType.Text;
                    con.Open();
                    SqlDataReader read = cmd.ExecuteReader();
                    while(read.Read())
                    {
                        if(read["AdminId"].ToString() == txtId.Text && read["AdminPassword"].ToString() == txtPasssword.Text)
                        {
                            Response.Redirect("Inbox.aspx");
                        }
                    }
                    lblShowMessage.Text = "Please enter correct id and password!";
                   
                }
            }
        }
    }
}