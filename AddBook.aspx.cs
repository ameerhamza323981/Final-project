using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Managment_System
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGetLogin_Click(object sender, EventArgs e)
        {
            whenInsertButtonClick();
        }
        private void whenInsertButtonClick()
        {
            SqlConnection con = DataBaseConnection.dataBaseConnection();
            using (con)
            {
                SqlCommand cmd = new SqlCommand("insert into Book values(@name,@authour,@edition,@page,@price)", con);
                using (cmd)
                {
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@authour", txtAuthour.Text);
                    cmd.Parameters.AddWithValue("@edition", txtEdition.Text);
                    cmd.Parameters.AddWithValue("@page", txtPage.Text);
                    cmd.Parameters.AddWithValue("@price", txtPrice.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMessage.Text = "Book added succesfully!";
                }
            }
        }


    }
}