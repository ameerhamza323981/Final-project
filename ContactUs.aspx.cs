using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Managment_System
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void whenInsertButtonClick()
        {
            SqlConnection con = DataBaseConnection.dataBaseConnection();
            using (con)
            {
                SqlCommand cmd = new SqlCommand("insert into ContactUs values(@name,@contact,@email,@message)", con);
                using (cmd)
                {
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@contact",txtContact.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@message", txtMessage.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMessage.Text = "We Will Contact Soon!";
                }
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            whenInsertButtonClick();
        }

    }
}