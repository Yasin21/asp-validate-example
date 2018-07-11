using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MarigeFrom : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int age = Convert.ToInt16(TextBox5.Text);
        if (args.Value == "M" || args.Value == "m")
        {
            args.IsValid = age >= 21;
        }
        else
        {
            args.IsValid = age >= 18;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Page.IsValid){
         Response.Redirect("~/success.aspx");   
        }
    }
}