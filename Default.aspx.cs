using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataReader rdr;
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["sqlconnection"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand abc = new SqlCommand("Update Table1 Set Name='hi' where id=1", con);
            int up=abc.ExecuteNonQuery();
            Response.Write("up is "+up+" ");
            
               ////--del data

               // SqlCommand cmd1 = new SqlCommand("Delete from Table1", con); 
               // int del=cmd1.ExecuteNonQuery();
               // Response.Write("del is "+del+" ");

               //--insert data
                SqlCommand cmd = new SqlCommand("INSERT INTO Table1 (Name) VALUES('" + TextBox2.Text + "')", con);
                if ((con.State & ConnectionState.Open) > 0){
                    Response.Write("Connection OK!");
                    int i=cmd.ExecuteNonQuery();
                    if (i != 0){
                        Response.Write(i);
                        Response.Write("row inserted");
                    }
                    else{
                        Response.Write("row not inserted");
                    }
                    
                    //--select data
                    cmd.CommandText = "select Name from Table1";
                    cmd.Connection = con;
                    rdr = cmd.ExecuteReader();
                    int j = 0;
                    if (rdr != null){
                        while (rdr.Read()){
                            j++;
                            var myString = rdr.GetString(0); 
                            Response.Write(myString+" ");
                        
                        }
                        Response.Write(" "+j + " ");
                    }
                con.Close();
            }
            else
            {
                Response.Write("Connection no good!");
            }
            
            con.Close();
        }
        catch (Exception y)
        { }

    }
}
