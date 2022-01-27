using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student_Registration
{
    public partial class TestJSCalc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Input1.Attributes.Add("onkeyup", "GetTotal();");
            Input2.Attributes.Add("onkeyup", "GetTotal();");
            Total.Attributes.Add("onkeyup", "GetTotal();");
        }
    }
}