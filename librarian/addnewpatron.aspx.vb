Imports System.Data.SqlClient

Partial Class addnewpatron
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        CreateUserWizard1.Focus()

    End Sub

    Protected Sub CreateUserWizard1_ActiveStepChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CreateUserWizard1.ActiveStepChanged

        If CreateUserWizard1.ActiveStep.Title = "Complete" Then

            Dim UserSetting As WizardStep = CType(CreateUserWizard1.FindControl("UserProfile"), WizardStep)

            Dim FirstName As TextBox = CType(UserSetting.FindControl("tb_FirstName"), TextBox)
            Dim LastName As TextBox = CType(UserSetting.FindControl("tb_LastName"), TextBox)
            Dim City As TextBox = CType(UserSetting.FindControl("tb_City"), TextBox)
            Dim birthdate As TextBox = CType(UserSetting.FindControl("tb_birthdate"), TextBox)
            Dim address As TextBox = CType(UserSetting.FindControl("tb_address"), TextBox)
            Dim address2 As TextBox = CType(UserSetting.FindControl("tb_address2"), TextBox)
            'Dim state As TextBox = CType(UserSetting.FindControl("tb_state"), TextBox)
            Dim strPostalCode As String = ddl_State.SelectedItem.Text
            Dim zipcode As TextBox = CType(UserSetting.FindControl("tb_zipcode"), TextBox)
            Dim phone As TextBox = CType(UserSetting.FindControl("tb_phonenumber"), TextBox)
            Dim phone2 As TextBox = CType(UserSetting.FindControl("tb_phonenumber2"), TextBox)
            Dim email As TextBox = CType(UserSetting.FindControl("tb_email"), TextBox)


            Dim newUser As MembershipUser = Membership.GetUser(CreateUserWizard1.UserName)
            Dim newUserID As Guid = CType(newUser.ProviderUserKey, Guid)

            Roles.AddUserToRole(newUser.UserName, "Patron")
            Dim connectionString As String = ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString
            Dim updatesql As String = "INSERT INTO [Patron] ([UserID],[Fname],[Lname],[Birthdate],[Address],[Address2],[City],[State],[Zipcode],[PhoneNumber],[PhoneNumber2],[email]) VALUES (@userId, @FirstName, @LastName, @birthdate, @address, @address2, @city, @state, @zipcode, @phone, @phone2, @email)"

            Using myConnection As New SqlConnection(connectionString)
                myConnection.Open()

                Dim myCommand As New SqlCommand(updatesql, myConnection)
                myCommand.Parameters.Add(New SqlParameter("@state", strPostalCode))
                myCommand.Parameters.AddWithValue("@FirstName", FirstName.Text.Trim())
                myCommand.Parameters.AddWithValue("@LastName", LastName.Text.Trim())
                myCommand.Parameters.AddWithValue("@city", City.Text.Trim())
                myCommand.Parameters.AddWithValue("@birthdate", birthdate.Text.Trim())
                myCommand.Parameters.AddWithValue("@UserId", newUserID)
                myCommand.Parameters.AddWithValue("@address", address.Text.Trim())
                myCommand.Parameters.AddWithValue("@address2", address2.Text.Trim())
                'myCommand.Parameters.AddWithValue("@state", state.Text.Trim())
                myCommand.Parameters.AddWithValue("@zipcode", zipcode.Text.Trim())
                myCommand.Parameters.AddWithValue("@phone", phone.Text.Trim())
                myCommand.Parameters.AddWithValue("@phone2", phone2.Text.Trim())
                myCommand.Parameters.AddWithValue("@email", email.Text.Trim())

                'myCommand.Parameters.AddWithValue("@availabletime", availabletime.Text.Trim())
                'myCommand.Parameters.AddWithValue("@interestactivities", interestactivities.Text.Trim())
                'myCommand.Parameters.AddWithValue("@faractivities", faractivities.Text.Trim())
                'myCommand.Parameters.AddWithValue("@personality", personality.Text.Trim())
                'myCommand.Parameters.AddWithValue("@schoolsubject", subject.Text.Trim())
                ' myCommand.Parameters.AddWithValue("@sport", sport.Text.Trim())
                myCommand.ExecuteNonQuery()
                myConnection.Close()
            End Using


        End If
    End Sub

End Class
