
Partial Class Search
    Inherits System.Web.UI.Page

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        Dim search As String = "SELECT [MaterialID], [Title], [Author], [ISBNnumber], [callNumber], [Genre], [Publisher], [Image], [Availability], [MediaType], [Copyright] FROM [Materials] WHERE ([Title] LIKE '%" + TextBox1.Text + "%') OR ([Author] LIKE '%" + TextBox1.Text + "%') OR ([MediaType] LIKE '%" + TextBox1.Text + "%')"
        SqlDataSource1.SelectCommand = search
    End Sub

   
End Class
