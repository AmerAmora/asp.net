using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vote
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Vote"] != null)
            {
                label1.Visible = true;

                question.Visible = false;
                RadioButton1.Visible = false;
                RadioButton2.Visible = false;
                RadioButton3.Visible = false;
                RadioButton4.Visible = false;
                Button1.Visible = false;
                label1.Text = "Your Answer is : "+Request.Cookies["Vote"].Value;
            }

        }
        protected void radioCheck(object sender, EventArgs e)
        {
            string answer = "";
            if (RadioButton1.Checked)
            {
                answer = RadioButton1.Text;

            }
            else if (RadioButton2.Checked)
            {
                answer = RadioButton2.Text;

            }
            else if (RadioButton3.Checked)
            {
                answer = RadioButton3.Text;

            }
            else if (RadioButton4.Checked)
            {
                answer = RadioButton4.Text;

            }
            Response.Cookies["Vote"].Value = answer;
            Response.Cookies["Vote"].Expires= DateTime.Now.AddSeconds(20);
            question.Visible = false;
            RadioButton1.Visible= false;
            RadioButton2.Visible= false;
            RadioButton3.Visible= false;
            RadioButton4.Visible = false;
            Button1.Visible = false;
            label1.Visible = true;
            label1.Text += answer;
        }
    }
}