<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Check-In.aspx.vb" Inherits="librarian_Check_In" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<br />
<br />
    <div class="container">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                <h3 class="panel-title">Material Check-In</h3>
            </div>
        <div class="row">
             <div class="col-md-6 col-md-offset-1">
            
                <br />
                <br />
                <div class="form-horizontal">
                    <div class="input-group"> 
                     Material ID to be returned:  <asp:TextBox ID="tb_MaterialID" width="150%" cssclass="form-control" runat="server"></asp:TextBox>
                       
                    </div>
               </div>    
			
                <asp:RequiredFieldValidator ID="rfd_MaterialIdRequired" runat="server" 
                           ControlToValidate="tb_MaterialID" ErrorMessage="Please enter the ID of the item to be returned." 
                           ToolTip="Please enter the ID of the item to be returned.">
                           <span class="rfd">*** Please enter the ID of the item to be returned.</span>
                </asp:RequiredFieldValidator>
            
<br />
                <div class="col-md-5 col-md-offset-5">
                    <div class="row">
                    <asp:Button ID="btn_Cancel" class="btn btn-info" runat="server" Text="Cancel" CausesValidation="False" />
                    <asp:Button ID="btn_Return" class="btn btn-primary" runat="server" Text="Check-In Material" />
                        <br /><br />
                    </div>      
                    </div>
                
    <br /><br /><br />

            </div>
                </div>
        </div>
    </div>
    

</asp:Content>

