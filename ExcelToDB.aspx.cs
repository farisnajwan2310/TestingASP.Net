using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Common;

namespace student_Registration
{
    public partial class ExcelToDB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void UploadBtn_Click(object sender, EventArgs e)
        {
            
            if (FileUpload1.HasFile)
            {
                
                    FileUpload1.SaveAs(@"C:\Users\BSPT0773\source\repos\student Registration\ExcelFile\" + FileUpload1.FileName); C:
                    string p1 = @"C:\Users\BSPT0773\source\repos\student Registration\ExcelFile\" + FileUpload1.FileName;
                    string path = (Server.MapPath("~/ExcelFile/" + FileUpload1.FileName));
                    FileUpload1.SaveAs(path);
                    string excelCS = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + p1 + ";Extended Properties=Excel 4.0;";


                    OleDbConnection con = new OleDbConnection(excelCS);
                    OleDbCommand cmd = new OleDbCommand("Select * from [Excel2DB csv$]", con);
                    OleDbDataAdapter objAdapter1 = new OleDbDataAdapter(cmd);

                    DataSet ds = new DataSet();
                    objAdapter1.Fill(ds);

                    con.Open();
                    // Create DbDataReader to Data Worksheet  
                    DbDataReader dr = cmd.ExecuteReader();
                    // SQL Server Connection String  
                    string ConnStr = "Data Source=HMSB-M1MQ006203;Initial Catalog=MyDB;Integrated Security=True";
                    // Bulk Copy to SQL Server   
                    SqlBulkCopy bulkInsert = new SqlBulkCopy(ConnStr);
                    bulkInsert.DestinationTableName = "studentdetail";
                    bulkInsert.WriteToServer(dr);
                    con.Close();
                    MessageLabel.Text = FileUpload1.FileName + " Successfully Uploaded";
                    Response.Write("<script>alert('Data inserted successfully')</script>");
                
                
                //    MessageLabel.Text = "File is duplicated";
                  //  Response.Write("<script>alert('Error occured. Data may duplicated.')</script>");
                
                
                }
                
                        
                       
                    

                        MessageLabel.Visible = true;
                    
            

        }
    }
}