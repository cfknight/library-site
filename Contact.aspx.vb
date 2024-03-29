﻿Imports System.Net
Imports System.Net.Mail

Partial Class Contact
    Inherits System.Web.UI.Page

    Protected Sub sendMail_Click(sender As Object, e As EventArgs) Handles sendMail.Click
        'Declare variables to create a new mail message and client connection.
        Dim msg As New MailMessage
        Dim client As New SmtpClient

        If senderAddress.Text = "" Then
            MsgBox("Please enter your email before sending your message to us. Thank you")
            Response.Redirect("Contact.aspx")
        Else
            msg.To.Add("michael-colbert@uiowa.edu")  'destination email address
            msg.From = New MailAddress(senderAddress.Text)  'get the address from the textbox
            msg.Subject = "web contact form test"  'set the message subject line
            msg.Body = senderMessage.Text  'get the message body from the textbox

            client.Host = "smtp.gmail.com"  'place your smtp server inside quotation marks - gmail is smtp.gmail.com
            client.Port = 587  'place your smtp port here - gmail is 587
            client.Credentials = New NetworkCredential("ui.6k183", "6k183U*I")  'enter you username and password for gmail
            client.EnableSsl = True  'gmail uses ssl
            client.Send(msg)  'send you msg (variable from above)

            'Clear out the textboxes after the message is sent.
            'If not, it does not appear to send and the user will click "send" repeatedly, sending multiple messages.
            senderAddress.Text = ""
            senderMessage.Text = ""

            'Write into the label that the message has been sent.
            confirmSent.Text = "Thank you.  Your message has been sent."

            'After the message has displayed for 2 seconds, "reload" the page.
            Response.AddHeader("REFRESH", "2;URL=contact.aspx")

        End If
    End Sub

    Protected Sub clear_Click(sender As Object, e As EventArgs) Handles clear.Click

        If senderAddress.Text <> String.Empty Or senderMessage.Text <> String.Empty Then
            clearfields()
        End If

    End Sub

    Protected Sub clearfields()
        senderAddress.Text = ""
        senderMessage.Text = ""
    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        senderAddress.Focus()
    End Sub
End Class
