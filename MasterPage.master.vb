Imports System.Data.SqlClient
Imports System.Data

Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        timeLabel.Text = DateTime.Now.ToString("MM/dd/yyyy hh:mm tt")


        Dim connection As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)
        Dim command As New SqlCommand("select * from Materials")
        Dim adapt As New SqlDataAdapter(command.CommandText, connection)
        Dim data As New DataSet()


        connection.Open()
        adapt.Fill(data)
        countLabel.Text = data.Tables(0).Rows.Count.ToString()
        connection.Close()

    End Sub
End Class

