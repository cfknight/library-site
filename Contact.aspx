<%@ Page Title="Contact Us" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
     <div class="row">

     <div class="col-md-6">
         <asp:Image ID="aboutUspic"  runat="server" Width="100%"  ImageUrl ="~/images/libraryguyscontactpg-optimized.png" />   
        
     </div>            
                     
     <div class="col-md-5 col-md-offset-1">
                <h3>Contact Us</h3>
         Phone: (319) 555-5555<br />
         Address: 333 Book Street South Liberty, IA 52243
<p id="contactpage">
        <br />
        <br />
         Your email address:
        <asp:TextBox ID="senderAddress" runat="server" Width="280px"></asp:TextBox>
        

        <br />
        <br />
       
         
       
        <asp:Label ID="messageMail" runat="server" Text="Message:" Font-Size="large"></asp:Label><br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Width="410px" Rows="10"  TextMode="MultiLine"></asp:TextBox>
         </p>
        <br />
            <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>
         <br />
        <div class="row">
            <div class="col-md-6 col-md-offset-6">
         <asp:Button ID ="clear" CssClass="btn btn-lg btn-default" runat="server" Text="Clear" />&nbsp;&nbsp;
       <asp:Button ID="sendMail" CssClass="btn btn-lg btn-info" runat="server" Text="Send" />
        </div>
            </div>
        <br />
        </div>
</div>
</div>


  
 
  
    
</asp:Content>



