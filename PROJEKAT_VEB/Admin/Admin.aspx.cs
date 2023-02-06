using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJEKAT_VEB.Admin
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            TextBox1.CssClass = "form-control";
            TextBox2.CssClass = "form-control";


            if (Page.IsValid)
            {

                string connectionString = GetConnectionString();

                SqlConnection con = new SqlConnection(connectionString);

                string Program = TextBox1.Text.Trim();
                string Opis = TextBox2.Text.Trim();


                InsertStudent(con, Program, Opis);



                Response.Redirect("~/Admin/Admin.aspx", false);
            }





            string GetConnectionString()
            {

                return "Data Source=.;Initial Catalog=projekat_veb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            }

            void InsertStudent(SqlConnection con, string Program, string Opis)
            {

                using (con)
                {
                    con.Open();

                    SqlParameter p1 = new SqlParameter();
                    SqlParameter p2 = new SqlParameter();

                    p1.Value = Program;
                    p2.Value = Opis;

                    p1.ParameterName = "@Program";
                    p2.ParameterName = "@Opis";

                    string query = "INSERT INTO projekat (Program, Opis) " +
                                    "VALUES (@Program, @Opis)";

                    SqlCommand command = new SqlCommand(query, con);

                    command.Parameters.Add(p1);
                    command.Parameters.Add(p2);

                    command.ExecuteNonQuery();
                }


            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (GridView1.SelectedRow != null)
            {
                Label8.Visible = false;


                try
                {


                    GridViewRow row = GridView1.SelectedRow;
                    Button2.Visible = true;


                    Label1.Visible = true;
                    TextBox1.Text = row.Cells[2].Text;
                    TextBox1.Visible = true;



                    Label2.Visible = true;
                    TextBox2.Text = row.Cells[3].Text;
                    TextBox2.Visible = true;



                    Label3.Visible = true;
                    TextBox3.Visible = true;
                    TextBox3.Text = row.Cells[1].Text;
                    TextBox3.ReadOnly = true;

                    Button4.Visible = true;


                }
                catch (System.NullReferenceException ex)
                {
                    //TODO ne hvata izuzetak System.NullReferenceException
                    Label8.Text = "Please select a row.";
                    Label8.Visible = true;
                    System.Diagnostics.Debug.WriteLine("Exception Message: " + ex.Message);
                    System.Diagnostics.Debug.WriteLine("Stack Trace: " + ex.StackTrace);
                }
                catch (Exception e2)
                {
                    System.Diagnostics.Debug.WriteLine("Exception Message: " + e2.Message);
                    System.Diagnostics.Debug.WriteLine("Stack Trace: " + e2.StackTrace);
                }

            }
            else
            {
                Label8.Text = "Please select a row.";
                Label8.Visible = true;
            }
        }

        void UpdateStudentParameter(SqlConnection connection, int id, string program, string opis)
        {


            using (connection)
            {
                connection.Open();

                SqlParameter p1 = new SqlParameter();
                SqlParameter p2 = new SqlParameter();
                SqlParameter p3 = new SqlParameter();
                SqlParameter p4 = new SqlParameter();


                p1.Value = id;
                p2.Value = program;
                p3.Value = opis;

                p1.ParameterName = "@id";
                p2.ParameterName = "@program";
                p3.ParameterName = "@opis";

                string query = "UPDATE projekat " +
                                "SET Program=@program, Opis=@opis " +
                                "WHERE ID = @id";

                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.Add(p1);
                command.Parameters.Add(p2);
                command.Parameters.Add(p3);

                command.ExecuteNonQuery();

            }




        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=.;Initial Catalog=projekat_veb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

            Label8.Text = "";
            Label8.Visible = false;

                SqlConnection con = new SqlConnection(connectionString);

                GridViewRow row = GridView1.SelectedRow;

                    

            if (row != null)
            {

                row.Cells[0].ForeColor = System.Drawing.Color.SlateBlue;

                int id = Convert.ToInt32(row.Cells[1].Text.Trim());

                DeleteStudentParameter(con, id);

                Response.Redirect("~/Admin/Admin.aspx", false);

            }
            else
            {

                Label8.Text = "Please select a row.";
                Label8.Visible = true;
            }
            

        }

        void DeleteStudentParameter(SqlConnection connection, int id)
        {
            if (GridView1.SelectedRow != null)
            {
                Label8.Visible = false;


                using (connection)
                {
                    connection.Open();

                    SqlParameter p1 = new SqlParameter();

                    p1.Value = id;

                    p1.ParameterName = "@id";

                    string query = "DELETE FROM projekat " +
                                    "WHERE ID = @id";

                    SqlCommand command = new SqlCommand(query, connection);

                    command.Parameters.Add(p1);

                    command.ExecuteNonQuery();
                }
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox1.CssClass = "form-control";
            TextBox2.CssClass = "form-control";
            TextBox3.CssClass = "form-control";




            if (Page.IsValid)
            {

                string connectionString = "Data Source=.;Initial Catalog=projekat_veb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

                SqlConnection con = new SqlConnection(connectionString);

                int id = int.Parse(TextBox3.Text);
                string program = TextBox1.Text.Trim();
                string opis = TextBox2.Text.Trim();

                UpdateStudentParameter(con,id, program,opis);


                /*Objasnjenje u InsertWithWebControls*/
                Response.Redirect("~/Admin/Admin.aspx", false);

            }
        }
    }
}
