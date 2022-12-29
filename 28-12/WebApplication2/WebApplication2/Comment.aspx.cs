using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Comment : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("data source = DESKTOP-8NTQ6AN\\SQLEXPRESS; database = task2 ; integrated security=SSPI");
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Id"] = 1;
            print();
         
        }
        protected void print() 
        
        {
           

            connection.Open();
            string table =
"<table class='table table-striped'><tr><th>Comment</th></tr>";
            SqlCommand comand = new SqlCommand("select comment from comment", connection);
            SqlDataReader sdr = comand.ExecuteReader();
            while (sdr.Read())
            {
                table += $"<tr><td>{sdr[0]}</td></tr>";
            }
            table += "</table>";
            Label1.Text = table;
            connection.Close();
        }
        protected void send(object sender, EventArgs e)
        {
            if (Page.IsValid) { 
            connection.Open();
            SqlCommand comand = new SqlCommand($"insert into comment values('{TextBox1.Text}');", connection);
            comand.ExecuteNonQuery();   
            connection.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);

            print();
            }
        }
    }
}