Imports System.Data.SqlClient

Partial Class librarian_Check_In
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        tb_MaterialID.Focus()

    End Sub

    Protected Sub btn_Return_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_Return.Click

        Dim strMaterialId As String = tb_MaterialID.Text

        Dim sqlConn As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)

        Dim sqlAdp As New SqlDataAdapter
        Dim sqlCmd As New SqlCommand

        sqlCmd.Connection = sqlConn
        sqlCmd.CommandText = "slpl_CheckIn"
        sqlCmd.CommandType = Data.CommandType.StoredProcedure

        sqlCmd.Parameters.Add(New SqlParameter("@MaterialID", strMaterialId))

        sqlConn.Open()
        sqlCmd.ExecuteNonQuery()
        sqlConn.Close()

        Response.Redirect("ViewCheckedOut.aspx")

    End Sub


    Protected Sub btn_Cancel_Click(sender As Object, e As EventArgs) Handles btn_Cancel.Click

        Response.Redirect("Materials.aspx")

    End Sub

End Class

