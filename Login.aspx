<%@ Page Title="Login" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Please Sign In</h3>
            </div>
        <div class="row">
        <div class="col-md-4 col-md-offset-4">
            
        <asp:Login ID="Login1" runat="server" FailureAction="RedirectToLoginPage">
            <LayoutTemplate>

      <div class="form-signin">
          <h2 class="form-signin-heading">SLPL Login</h2>
          <asp:TextBox ID="UserName" CssClass="form-control" placeholder="User Name" runat="server" autofocus></asp:TextBox>
          <asp:TextBox ID="Password" TextMode="Password" class="form-control" Placeholder="Password" runat="server"></asp:TextBox>
  <label class="checkbox">
      <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me"/>
  </label>
          <asp:Literal ID="FailureText" runat="server" EnableViewState="false"></asp:Literal><br />
          <asp:RequiredFieldValidator ID="RequiredUserName" runat="server" ErrorMessage="User Name is required!" ControlToValidate="UserName" ToolTip="User Name is required!" ValidationGroup="Login1">*User Name is required!</asp:RequiredFieldValidator>
          <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ErrorMessage="Password is required!" ValidationGroup="Login1" ToolTip="Password is required!" ControlToValidate="Password">*Password is required!</asp:RequiredFieldValidator>
              
          <asp:Button ID="LoginButton" runat="server" Text="Login" CssClass="btn btn-lg btn-primary btn-block" CommandName="Login" ValidationGroup="Login1" />
          <br />
      </div>

                </LayoutTemplate>
            </asp:Login>
            </div>
        </div>
            </div>
    </div> <!-- /container -->


</asp:Content>

