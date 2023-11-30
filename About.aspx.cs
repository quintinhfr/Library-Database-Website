using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;



namespace ISIT300WebApp
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string filePath;
            //filePath = "~/Book/" + BookCoverFileUpload.FileName;

            string bookName = BookNameInput.Text;
            string ISBNValue = ISBNinput.Text;
            string authorID = AuthorIDDropDown.SelectedValue.ToString();
            string genreID = GenreDropDown.SelectedValue.ToString();
            string formatID = FormatDropDown.SelectedValue.ToString();

            //FileUpload picture = new FileUpload();
            //BookCoverFileUpload.SaveAs(Server.MapPath(filePath));
            //byte[] ImageFile = CreateImage();

            string query = "";
            query = "INSERT INTO Book (ISBN, BookName, FormatID, GenreID, PublishDate, AuthorID) VALUES (\'" + ISBNinput.Text + "\' , \'" + BookNameInput.Text + "\', \'" + FormatDropDown.SelectedValue.ToString() + "\', \'" + GenreDropDown.SelectedValue.ToString() + "\', \'" + PublishCalendar.SelectedDate + "\', \'" + AuthorIDDropDown.SelectedValue.ToString() + "\')";

            Console.WriteLine(query);
            InsertRemoveSQLData(query);

            Response.Redirect("Default.aspx");




        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
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
            string strcon = "";
            strcon = ConfigurationManager.ConnectionStrings["ML-RefVm-726242"].ConnectionString;

            SqlConnection conn = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string filePath;
            filePath = "~/Author/" + FileUpload1.FileName;

            string authorName = TextBox1.Text;

            //FileUpload picture = new FileUpload();
            //FileUpload1.SaveAs(Server.MapPath(filePath));
            //byte[] ImageFile = CreateImage();
            string query = "";
            query = "INSERT INTO Author (AuthorName, DoB) VALUES (\'" + TextBox1.Text + "\' , \'" + Calendar1.SelectedDate + "\' )";
            InsertRemoveSQLData(query);

            Response.Redirect("Default.aspx");





        }

        









        //Method to insert into Database
        private byte[] CreateImage()
        {
            try
            {


                //******************************************************

                string filePath;
                filePath = "~/Author/" + FileUpload1.FileName;

                FileInfo fileImage;
                fileImage = new FileInfo(@filePath); //File  image1.jpg to insert into database
                long ImageFileLength = fileImage.Length; //Getting file length
                byte[] ImageFile = new byte[ImageFileLength];
                FileStream fs = new FileStream(@filePath, FileMode.Open,
                FileAccess.Read, FileShare.Read); // open a stream to file 
                int iBytesRead = fs.Read(@ImageFile, 0, Convert.ToInt32(ImageFileLength)); // Read file and store into byte
                fs.Close(); // Close the stream 
                return ImageFile;


                //******************************************************

            }

            catch


            {
                byte[] ImageFile = new byte[0];
                return ImageFile;


            }


        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }


    }
}