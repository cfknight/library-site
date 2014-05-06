
Partial Class Login
    Inherits System.Web.UI.Page

    Protected Sub Login1_LoginError(sender As Object, e As EventArgs) Handles Login1.LoginError
        Response.Write("<script>alert('Username or Password is incorrect, please try again.');</script>")
    End Sub


End Class
