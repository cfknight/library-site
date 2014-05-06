<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddMaterial.aspx.vb" Inherits="librarian_AddMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container">
        <div class="page-header">
            <h2>Insert New Material</h2>
        </div>
           <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label1" runat="server" Text="Title"></asp:Label>
                                <div class="col-sm-10">
                                        <asp:TextBox ID="tbTitle" CssClass="form-control" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="tbTitle" ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Title required"></asp:RequiredFieldValidator>
                                </div>
                            </div> 
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label2" runat="server" Text="Author"></asp:Label>
                                <div class="col-sm-10">
                                        <asp:TextBox ID="tbAuthor" CssClass="form-control" runat="server" Text='<%# Bind("Author")%>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="tbTitle" ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="Author required"></asp:RequiredFieldValidator>
                                </div>
                            </div> 
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label3" runat="server" Text="ISBN Number"></asp:Label>
                                <div class="col-sm-10">
                                        <asp:TextBox ID="tbISBN" CssClass="form-control" runat="server" Text='<%# Bind("ISBNnumber")%>'></asp:TextBox>
                                </div>
                            </div> 
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label4" runat="server" Text="Call Number"></asp:Label>
                                <div class="col-sm-10">
                                        <asp:TextBox ID="tbCallNumber" CssClass="form-control" runat="server" Text='<%# Bind("callNumber")%>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="tbTitle" ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="Call Number required"></asp:RequiredFieldValidator>
                                </div>
                            </div> 
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label5" runat="server" Text="Genre"></asp:Label>
                                <div class="col-sm-10">
                                        <asp:TextBox ID="tbGenre" CssClass="form-control" runat="server" Text='<%# Bind("Genre")%>'></asp:TextBox>
                                </div>
                            </div> 
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label6" runat="server" Text="Publisher"></asp:Label>
                                <div class="col-sm-10">
                                        <asp:TextBox ID="tbPublisher" CssClass="form-control" runat="server" Text='<%# Bind("Publisher")%>'></asp:TextBox>
                                </div>
                            </div> 
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label7" runat="server" Text="Copyright"></asp:Label>
                                <div class="col-sm-10">
                                        <asp:TextBox ID="tbCopyright" CssClass="form-control" runat="server" Text='<%# Bind("Copyright")%>'></asp:TextBox>
                                </div>
                            </div> 
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label15" runat="server" Text="Media Type"></asp:Label>
                                <div class="col-sm-10">
                                    <asp:DropDownList CssClass="form-control" ID="listCategory" DataSourceID="SqlDataSource1" runat="server" DataTextField="Category" ></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT [Category] FROM [Category]"></asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label8" runat="server" Text="Availability"></asp:Label>
                                <div class="col-sm-10">
                                    <asp:CheckBox ID="AvailabilityCheckBox" runat="server" Checked='<%# Bind("Availability")%>' />
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <asp:Label CssClass="col-sm-2 control-label"  ID="Label9" runat="server" Text="Image"></asp:Label>
                                <div class="col-sm-10">
                                   <asp:FileUpload  ID="FileUpload1" runat="server" />
                                </div>
                            </div>
                        </div>
                    </div>
                    
                <div class="row">
                    <div class="col-md-6 col-md-offset-6">
                    <asp:Button ID="InsertButton" CssClass="btn btn-primary"  runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:Button>
                &nbsp;<asp:Button ID="CancelButton" CssClass="btn btn-info" runat="server" OnClick="CancelButton_Click" CausesValidation="False"  CommandName="Cancel" Text="Cancel"></asp:Button>
                </div>
            </div>
        <br />
        <div class="row">
            <asp:Label ID="errorLabel" cssclass= runat="server" Text=""></asp:Label>
        </div>    
                
                
                </div>
               </div>
    
    </div>
</asp:Content>

