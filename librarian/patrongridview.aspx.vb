
Partial Class librarian_patrongridview
    Inherits System.Web.UI.Page
    Protected Sub tb_searchPatron_TextChanged(sender As Object, e As EventArgs) Handles tb_searchPatron.TextChanged

        Dim searchP As String = "Select* FROM [Patron] WHERE ([Lname] LIKE '%" + tb_searchPatron.Text + "%') OR ([Fname] LIKE '%" + tb_searchPatron.Text + "%') OR ([PhoneNumber] LIKE '%" + tb_searchPatron.Text + "%') OR ([email] LIKE '%" + tb_searchPatron.Text + "%')"
        SqlDataSource1.SelectCommand = searchP

    End Sub
End Class
