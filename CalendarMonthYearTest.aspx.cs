using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student_Registration
{
    public partial class CalendarMonthYearTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            datepicker.Attributes.Add("onkeyup", "GetTotal();");
        }

        protected void datepicker_TextChanged(object sender, EventArgs e)
        {
            MonthLbl.Text = "The month is" + datepicker.Text;
        }

        protected void ShowBtn_Click(object sender, EventArgs e)
        {
            MonthLbl.Text = "The month is  :" + datepicker.Text;
        }
    }
}