Imports System.IO
Imports System.Data.SqlClient

Partial Class librarian_Materials
    Inherits System.Web.UI.Page


    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        Dim search As String = "SELECT [MaterialID], [Title], [Author], [ISBNnumber], [callNumber], [Genre], [Publisher], [Image], [Availability], [MediaType], [Copyright] FROM [Materials] WHERE ([Title] LIKE '%" + TextBox1.Text + "%') OR ([Author] LIKE '%" + TextBox1.Text + "%') OR ([MediaType] LIKE '%" + TextBox1.Text + "%')"
        SqlDataSource1.SelectCommand = search
    End Sub

    Protected Sub InsertButton_Click(sender As Object, e As EventArgs) Handles InsertButton.Click

        Try
            Dim callnumber As String = tbCallNumber.Text.ToString()
            Dim title As String = tbTitle.Text.ToString()
            Dim Author As String = tbAuthor.Text.ToString()
            Dim publisher As String = tbPublisher.Text.ToString()
            Dim copyright As String = tbCopyright.Text.ToString()
            Dim isbn As String = tbISBN.Text.ToString()
            Dim genre As String = tbGenre.Text.ToString()
            Dim category As String = listCategory.SelectedValue.ToString()
            Dim availability As Boolean = AvailabilityCheckBox.Checked()

            Dim filename As String = ""
            'fileupload
            If FileUpload1.HasFile Then
                Try
                    filename = Path.GetFileName(FileUpload1.PostedFile.FileName)
                    FileUpload1.SaveAs(Server.MapPath("~/images/materials/" + filename))

                Catch ex As Exception
                End Try
            End If



            Dim con As String = ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString
            Dim updatesql As String = "Insert INTO Materials (Title, Author, ISBNnumber, callNumber, Genre, Publisher, Availability, MediaType, Copyright, Image) values (@title, @author, @isbn, @callnumber, @genre, @publisher, @availability, @mediatype, @copyright, @Image)"

            Using mycon As New SqlConnection(con)
                mycon.Open()

                Dim cmd As New SqlCommand(updatesql, mycon)

                cmd.Parameters.AddWithValue("@Image", "~/images/materials/" + filename)
                cmd.Parameters.AddWithValue("@callnumber", callnumber)
                cmd.Parameters.AddWithValue("@title", title)
                cmd.Parameters.AddWithValue("@author", Author)
                cmd.Parameters.AddWithValue("@publisher", publisher)
                cmd.Parameters.AddWithValue("@copyright", copyright)
                cmd.Parameters.AddWithValue("@genre", genre)
                cmd.Parameters.AddWithValue("@isbn", isbn)
                cmd.Parameters.AddWithValue("@mediatype", category)
                cmd.Parameters.AddWithValue("@availability", availability)
                cmd.ExecuteNonQuery()
                mycon.Close()
            End Using

            errorLabel.Text = "Your material was inserted successfully."
            ClearFields()
        Catch ex As Exception
            errorLabel.Text = "Sorry your material could not be uploaded"
        End Try
        Response.AddHeader("REFRESH", "5;URL=Materials.aspx")
    End Sub

    Protected Sub CancelButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("~/librarian/Materials.aspx")
    End Sub

    Protected Sub ClearFields()
        tbAuthor.Text = String.Empty
        tbCallNumber.Text = String.Empty
        tbCopyright.Text = String.Empty
        tbGenre.Text = String.Empty
        tbISBN.Text = String.Empty
        tbPublisher.Text = String.Empty
        tbTitle.Text = String.Empty
        listCategory.SelectedIndex = -1
        AvailabilityCheckBox.Checked = False
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        TextBox1.Focus()
    End Sub

End Class
