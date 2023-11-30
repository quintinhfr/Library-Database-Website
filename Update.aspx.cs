using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ISIT300WebApp
{
    public partial class Update : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        private DataTable SelectSQLData(string query)
        {
            DataTable dataTable = new DataTable();
            string strcon = ConfigurationManager.ConnectionStrings["ML-RefVm-726242"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dataTable);
            return (dataTable);
        }




        private void InsertRemoveSQLData(string query)
        {
            string strcon = ConfigurationManager.ConnectionStrings["ML-RefVm-726242"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {




            string query = "";

            query = "UPDATE Author SET AuthorName = (\'"+NameEditTextBox.Text+"\') WHERE AuthorName = (\'"+ANameDropdown.SelectedValue.ToString()+"\')";


            //TestTextBox.Text = query;
 

            InsertRemoveSQLData(query);
            Response.Redirect("Default.aspx");

        }

        protected void ANameDropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Author = "";
            Author = ANameDropdown.SelectedValue.ToString();
            
            NameEditTextBox.Text = Author;
        }
    }

}

