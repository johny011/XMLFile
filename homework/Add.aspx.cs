using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml.Linq;

namespace homework
{
    public partial class Add : System.Web.UI.Page
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
            xDocument.Element("employee").Add(
                new XElement("empdetails", new XAttribute("id", Txt_Id.Text),
                new XElement("UserName", Txt_User.Text),
                new XElement("Password", Txt_Pass.Text)));
            xDocument.Save(@"D:\AD.XML");
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("XML.aspx");
        }
    }
}