using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Configuration;
using System.Data;

namespace homework
{
    public partial class XML : System.Web.UI.Page
    {
        string con = @"Data Source=DESKTOP-U91N0A8;Initial Catalog=Hospital;Integrated Security=True";

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

        protected void Btn_Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add.aspx");
        }

        protected void Btn_Edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Edit.aspx");
        }

        protected void Btn_Send_Click(object sender, EventArgs e)
        {
             SqlConnection connection = new SqlConnection(con);
              connection.Open();

              foreach (GridViewRow gridView in GridView1.Rows)
              {
                  SqlCommand command = new SqlCommand("insert into Users values(@ID,@Username,@Password)", connection);
                  
                  command.Parameters.AddWithValue("@ID", gridView.Cells[2].Text);
                  command.Parameters.AddWithValue("@Username", gridView.Cells[0].Text);
                  command.Parameters.AddWithValue("@Password", gridView.Cells[1].Text);
                  command.ExecuteNonQuery();
              }
              connection.Close();
        }

        protected void Btn_Delete_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Delete.aspx");

        }
    }
}