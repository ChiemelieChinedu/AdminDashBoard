using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

public partial class Admin_AdminPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        list.DataSource = GetMessages();
        // Needed to bind the data bound controls to the data source
        list.DataBind();

        string[] x = { "Art", "Literature", "Novels", "Social Sciences", "English" };
        int[] y = { 2, 6, 4, 5, 3 };
        
        Chart1.Series[0].Points.DataBindXY(x, y);
        Chart1.Series[0].ChartType = SeriesChartType.Pie;
        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        Chart1.Legends[0].Enabled = true;

        Chart2.Series[0].Points.DataBindXY(x, y);
        Chart2.Series[0].ChartType = SeriesChartType.Pie;
        Chart2.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        Chart2.Legends[0].Enabled = true;
    }
    public void LoadChart()
    {
        string dataQuery = "SELECT TOP 5 ProductName, Quantity AS QuantitySold FROM OrderDetail ORDER BY Quantity";
        SqlConnection con = new SqlConnection(conState.ConnectionString);
        SqlCommand command = con.CreateCommand();
        command.CommandType = CommandType.Text;
        command.CommandText = dataQuery;
        command.Connection.Open();
        command.CommandTimeout = 600;
        SqlDataReader dr = command.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(dr);
        string[] x = new string[5];
        int[] y = new int[5];

        //string[] x = { "Art", "Literature", "Novels", "Social Sciences", "English" };
        //int[] y = { 2, 6, 4, 5, 3 };
        for (int i = 0; i < 5; i++)
        {
            x[i] = dt.Rows[i][0].ToString();
            y[i] = Convert.ToInt32(dt.Rows[i][1]);
        }
        Chart1.Series[0].Points.DataBindXY(x, y);
        Chart1.Series[0].ChartType = SeriesChartType.Pie;
        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        Chart1.Legends[0].Enabled = true;

    }
    public static DataTable GetMessages()
    {
        string dataQuery = "SELECT Top 1 Name,Email,PhoneNo,Message,MsgDate FROM ClientMessages";
        SqlConnection con = new SqlConnection(conState.ConnectionString);
        SqlCommand command = con.CreateCommand();
        command.CommandType = CommandType.Text;
        command.CommandText = dataQuery;
        command.Connection.Open();
        command.CommandTimeout = 600;
        SqlDataReader dr = command.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(dr);
        dr.Close();
        command.Dispose();
        command.Connection.Close();
        return dt;
    }
}