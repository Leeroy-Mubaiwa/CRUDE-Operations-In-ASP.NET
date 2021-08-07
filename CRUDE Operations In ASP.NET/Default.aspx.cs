using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using System.Data;
using System.IO;

namespace CRUDE_Operations_In_ASP.NET
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadlist();
               
            }
        }
      
        protected void Button1_Click(object sender, EventArgs e)
        {
          

        }

        public void loadlist()
        {
            DropDownList1.Items.Clear();

            string[] countries = Properties.Resources.Countries.Split('\n');
            foreach (string country in countries)
            {
                DropDownList1.Items.Add(country);
            }
            command = new SqlCommand("Select staff_id,staff_nationa_id,staff_name_first,email from staff order by staff_id", conn);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        SqlConnection conn = new SqlConnection(Properties.Settings.Default.ConnectionString);
        SqlCommand command = new SqlCommand();
        Queue<int> d = new Queue<int>();
        protected void btnSave_Click(object sender, EventArgs e)
        {
          

         for(int a = 1;a<100;a++)
            {

                Random rand = new Random();
            int g=    rand.Next(a, (100 / a) + (a * a));
                d.Enqueue(a + g);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "script", "alert('Que has now " + d.Last() + "');", true);

            }
       {
              
                conn.Open();

                string insert =
                     "INSERT INTO [staff] " +
                     "([staff_count], [staff_id], [staff_nationa_id], [staff_name_first],  [staff_surname], [staff_sex], [email], [contact]) " +
                     "VALUES " +
                     "(" + d.Peek() + ", '" + d.Dequeue() + "', '" + DropDownList1.SelectedValue + "', '" + DropDownList1.SelectedValue + "','"
                     + "Mubaiwa','Male','markmubaiwa@gmail.com','0774454447')";


                if (conn.State == System.Data.ConnectionState.Open)

                {

                    command = new SqlCommand(insert, conn);
                    int a = command.ExecuteNonQuery();
                    if (a > 0)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "script", "alert('Data Successfully Inserted');", true);

                    
                    }
                }
                else
                {


                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('ConnectionOpened')", true);
                }
            }
            loadlist();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            loadlist();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            loadlist();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            loadlist();
        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            loadlist();
        }

        protected void btn_import_Click(object sender, EventArgs e)
        {
            import();
                  }

        private void import()
        {

            string[] firstList = Properties.Resources.Colors.Split('\n');
            string[][] tableImport = new string[firstList.Length + 10][];//[ firstList[0].Split(';').Length+10];
            int counter = 0;
            foreach(string s in firstList)
            {
                string[] splits = s.Split(';');

                int b = 0;
               
                foreach (string got in splits)
                {
                    tableImport[counter][b++] = got;
                }
                counter++;

            }

         foreach(string[] h in tableImport )
            {
                foreach (string f in h)
                {
                    TextBox5.Text += f+ "\t";
                }
                TextBox5.Text += "\n";
            }
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "script", "alert('"+tableImport[0][0]+"')", true);
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}