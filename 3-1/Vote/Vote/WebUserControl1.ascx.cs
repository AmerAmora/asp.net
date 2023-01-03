using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vote
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void answers() 
        {
            question.Visible = false;
            RadioButtonList1.Visible = false;
            Button1.Visible = false;
            results.Visible = true;

            SqlConnection con = new SqlConnection("data source=DESKTOP-8NTQ6AN\\SQLEXPRESS; database=Votes; integrated security=SSPI");
            SqlCommand cmd = new SqlCommand("select count(*) from answer", con);
            con.Open();
            double count = Convert.ToInt32(cmd.ExecuteScalar());
            SqlCommand excellent = new SqlCommand("select count(*) from answer where answer_id=1", con);
            double excellentCounter = Convert.ToInt32(excellent.ExecuteScalar());
            SqlCommand veryGood = new SqlCommand("select count(*) from answer where answer_id=2", con);
            double veryGoodCounter = Convert.ToInt32(veryGood.ExecuteScalar());
            SqlCommand good = new SqlCommand("select count(*) from answer where answer_id=3", con);
            double goodCounter = Convert.ToInt32(good.ExecuteScalar());
            SqlCommand poor = new SqlCommand("select count(*) from answer where answer_id=4", con);
            double poorCounter = Convert.ToInt32(poor.ExecuteScalar());


            this.excellent1.Attributes.Add("aria-valuenow", ((excellentCounter / count) * 100).ToString());
            this.excellent1.Attributes.Add("style", $"width:{(excellentCounter / count) * 100}%");
            this.excellent1.InnerHtml = $"Excellent {Math.Round((excellentCounter / count) * 100, 2)}%";

            this.vgood1.Attributes.Add("aria-valuenow", ((veryGoodCounter / count) * 100).ToString());
            this.vgood1.Attributes.Add("style", $"width:{(veryGoodCounter / count) * 100}%");
            this.vgood1.InnerHtml = $"Very Good {Math.Round((veryGoodCounter / count) * 100),2}%";

            this.good1.Attributes.Add("aria-valuenow", ((goodCounter / count) * 100).ToString());
            this.good1.Attributes.Add("style", $"width:{(goodCounter / count) * 100}%");
            this.good1.InnerHtml = $"Good {Math.Round((goodCounter / count) * 100),2}%";

            this.poor1.Attributes.Add("aria-valuenow", ((poorCounter / count) * 100).ToString());
            this.poor1.Attributes.Add("style", $"width:{(poorCounter / count) * 100}%");
            this.poor1.InnerHtml = $"Poor {Math.Round((poorCounter / count) * 100),2}%";


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Vote"] != null)
            {
                answers();
            }

        }
        protected void radioCheck(object sender, EventArgs e)
        {
           string answer = RadioButtonList1.SelectedValue;

            Response.Cookies["Vote"].Value = answer;
            Response.Cookies["Vote"].Expires= DateTime.Now.AddSeconds(20);
            question.Visible = false;
            RadioButtonList1.Visible = false;
            Button1.Visible = false;
      
          
                SqlConnection con = new SqlConnection("data source=DESKTOP-8NTQ6AN\\SQLEXPRESS; database=Votes; integrated security=SSPI");
                SqlCommand command = new SqlCommand($"insert into answer values({answer})", con);
                con.Open();
                command.ExecuteNonQuery();
                con.Close();
            
                answers();
            Response.Redirect("~/Vote.aspx");


        }
    }
}