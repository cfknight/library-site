<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Check-Out.aspx.vb" Inherits="librarian_Check_Out" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <div class="container">
        <div class="panel panel-primary"> 
            <div class="panel-heading">
                <h3 class="panel-title">Material Check-Out</h3>
            </div>
           <div class="row">
            <div class="col-sm-6 col-md-offset-1">
                <div class="form-horizontal">
                <div class="input-group">
   
                    <br /><br />
                 Username: <asp:TextBox ID="tb_UserName" cssclass="form-control" runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator ID="rfd_UserNameRequired" runat="server" 
                           ControlToValidate="tb_UserName" ErrorMessage="Please enter the UserName of the person renting the item." 
                           ToolTip="Please enter the UserName of the person renting the item.">
                           <span class="rfd">*** Please enter the UserName of the person renting the item.</span>
                </asp:RequiredFieldValidator>
                   <br /><br /> <br /><br />
			 Material ID:  <asp:TextBox ID="tb_MaterialID" cssclass="form-control" runat="server"></asp:TextBox>
			   <asp:RequiredFieldValidator ID="rfd_MaterialIdRequired" runat="server" 
                        ControlToValidate="tb_UserName" ErrorMessage="Please enter the Material ID of the item being rented." 
                        ToolTip="Please enter the Material ID of the item being rented.">
                        <span class="rfd">*** Please enter the Material ID of the item being rented.</span>
               </asp:RequiredFieldValidator>
                </div>
           
    <br />
       <div class="col-md-5 col-md-offset-5">
    <div class="row">
           <asp:Button ID="btn_Cancel" class="btn btn-info" runat="server" Text="Cancel" CausesValidation="False" />
    <asp:Button ID="btn_Rent" class="btn btn-primary" runat="server" Text="Rent Material" />
        </div>   
           <br />
           <asp:Label ID="errorLabel" cssclass="fontred strong" runat="server"></asp:Label>
        <br /> <br />
       </div>
       </div>
                </div>
             </div>

         </div>
            <br /> <br />
       <br />
   <br />
 </div>
</asp:Content>

