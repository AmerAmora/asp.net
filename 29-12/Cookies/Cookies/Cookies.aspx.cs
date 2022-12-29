using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookies
{
    public partial class Cookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Request.Cookies["login"] != null)
            {
                
                TextBox1.Text= Request.Cookies["login"]["userName"];
                TextBox2.Text = Request.Cookies["login"]["password"];
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked) { 

            Response.Cookies["login"]["userName"] = TextBox1.Text;
            Response.Cookies["login"]["password"] = TextBox2.Text;
            Response.Cookies["login"].Expires = DateTime.Now.AddSeconds(10);
            }

        }
    }
}