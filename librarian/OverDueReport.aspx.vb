
Partial Class librarian_OverDueReport
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ' Declare a variable
        Dim Overdue As String

        ' Set the variable equal to the SQL statement to perform the search
        Overdue = "SELECT * FROM Rentals WHERE DueDate < CONVERT(datetime,CONVERT(varchar(10),GetDate(),112))"

        ' Apply the variable (SQL statement) to the data source
        SqlDataSource2.SelectCommand = Overdue

    End Sub

End Class
