using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int number = Convert.ToInt32(args.Value);
        for (int i = 2; i < number; i++)
        {
            if (number % i == 0)
            {
                args.IsValid = false;
                return;
            }
        }
        args.IsValid = true;
    }
}