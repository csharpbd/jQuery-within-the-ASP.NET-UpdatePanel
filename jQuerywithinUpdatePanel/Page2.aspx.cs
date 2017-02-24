using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace jQuerywithinUpdatePanel
{
    public partial class Page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnServerAdd_Click(object sender, EventArgs e)
        {
            int Num1 = Convert.ToInt16(txtNum1.Text);
            int Num2 = Convert.ToInt16(txtNum2.Text);
            int Result = Num1 + Num2;
            txtResult.Text = Result.ToString();
        }
    }
}
