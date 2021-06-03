using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data;

namespace homework
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet ds = new DataSet();
                ds.ReadXml("D:/AD.XML");
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             XDocument xDocument = XDocument.Load(@"D:\AD.XML");
             xDocument.Root.Elements().Where(x => x.Attribute("id").Value == Txt_Id.Text).Remove();
             xDocument.Save(@"D:\AD.XML");
            
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("XML.aspx");
        }
    }
}