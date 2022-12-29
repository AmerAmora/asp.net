using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookies
{
    public partial class Task2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString();

            if (Request.Cookies["Color"] != null)
            {
                Label1.ForeColor = System.Drawing.Color.FromName(Request.Cookies["Color"]["chose"]);
                  
            }

        }

        protected void Color(object sender, EventArgs e)
        {
            Response.Cookies["Color"]["chose"] = dropColor.SelectedValue.ToString();

            Label1.Attributes.Add("style", $"color:{dropColor.SelectedValue.ToString()}");
            Response.Cookies["Color"].Expires = DateTime.Now.AddSeconds(60);
            


        }
    }
}