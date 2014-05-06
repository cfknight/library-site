Imports System.Data.SqlClient

Partial Class librarian_Check_Out
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        tb_UserName.Focus()

    End Sub

        Protected Sub btn_Rent_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_Rent.Click

        errorLabel.Text = ""

        Try

            Dim strMaterialId As String = tb_MaterialID.Text
            Dim strUserName As String = tb_UserName.Text
            Dim ChkOutDate As DateTime = DateTime.Now
            Dim DueDate As DateTime = DateAdd("d", 30, Today)


            Dim sqlConn As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)

            Dim sqlAdp As New SqlDataAdapter
            Dim sqlCmd As New SqlCommand

            sqlCmd.Connection = sqlConn
            sqlCmd.CommandText = "slpl_CheckOut"
            sqlCmd.CommandType = Data.CommandType.StoredProcedure

            sqlCmd.Parameters.Add(New SqlParameter("@UserName", strUserName))
            sqlCmd.Parameters.Add(New SqlParameter("@MaterialID", strMaterialId))
            sqlCmd.Parameters.Add(New SqlParameter("@ChkOutDate", ChkOutDate))
            sqlCmd.Parameters.Add(New SqlParameter("@DueDate", DueDate))
            sqlConn.Open()
            sqlCmd.ExecuteNonQuery()
            sqlConn.Close()
        Catch SQLex As SqlException
            Dim myError As SqlError
            For Each myError In SQLex.Errors
                errorLabel.Text = SQLex.Message
            Next

        End Try

        tb_MaterialID.Text = ""
        tb_MaterialID.Text = ""

        If errorLabel.Text = "" Then
            Response.Redirect("ViewCheckedOut.aspx")
        End If
            
    End Sub



    Protected Sub btn_Cancel_Click(sender As Object, e As EventArgs) Handles btn_Cancel.Click

        Response.Redirect("Materials.aspx")

    End Sub

End Class

