Imports System.Data.SqlClient
Imports System.Web.Security
Imports System.Web.Security.Roles
Imports System.Web.Security.Membership
Imports System.Data



Partial Class librarian_patrondetailview
    Inherits System.Web.UI.Page


    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted

        Dim delCustomerFname As String = e.Values("Fname").ToString()
        Dim delCustomerLname As String = e.Values("Lname").ToString()


        lbl_DeletedCustomer.Text = "The customer <span class=deletedrecordhighlight> " & delCustomerFname & " " & delCustomerLname & "</span> has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=patrongridview.aspx")
    End Sub







   
    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated

        Response.Redirect("patrongridview.aspx")

    End Sub
End Class
