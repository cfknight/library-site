
Partial Class librarian_Details
    Inherits System.Web.UI.Page




    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim delTitle As String = e.Values("Title").ToString()

        lbl_DeletedMaterial.Text = "The item <span class=deletedrecordhighlight> " & delTitle & " </span> has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=materials.aspx")
    End Sub


    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("~/librarian/Materials.aspx")
    End Sub
End Class
