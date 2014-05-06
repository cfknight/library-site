<%@ Page Title="Materials - Librarian" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Materials.aspx.vb" Inherits="librarian_Materials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
          <div class="row">
            <!-- Button trigger modal -->
<a class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Add a New Material &raquo;
</a>                             
</div>
        <br />
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
            <div class="input-group input-group-lg">
                <asp:TextBox ID="TextBox1" AutoPostBack="true" Placeholder="Search by Title, Author, or Media Type" CssClass="form-control" runat="server"></asp:TextBox>
                <span class="input-group-btn">
                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Search" />
                </span>
                </div>
                <br /><br />
            </div>
        </div>

        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="table-responsive">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT * FROM [Materials]" DeleteCommand="DELETE FROM [Materials] WHERE [MaterialID] = @MaterialID" InsertCommand="INSERT INTO [Materials] ([Title], [Author], [ISBNnumber], [callNumber], [Genre], [Publisher], [Image], [Availability], [MediaType], [Copyright]) VALUES (@Title, @Author, @ISBNnumber, @callNumber, @Genre, @Publisher, @Image, @Availability, @MediaType, @Copyright)" UpdateCommand="UPDATE [Materials] SET [Title] = @Title, [Author] = @Author, [ISBNnumber] = @ISBNnumber, [callNumber] = @callNumber, [Genre] = @Genre, [Publisher] = @Publisher, [Image] = @Image, [Availability] = @Availability, [MediaType] = @MediaType, [Copyright] = @Copyright WHERE [MaterialID] = @MaterialID">
        <DeleteParameters>
            <asp:Parameter Name="MaterialID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="ISBNnumber" Type="String" />
            <asp:Parameter Name="callNumber" Type="String" />
            <asp:Parameter Name="Genre" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Availability" Type="Boolean" />
            <asp:Parameter Name="MediaType" Type="String" />
            <asp:Parameter Name="Copyright" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="ISBNnumber" Type="String" />
            <asp:Parameter Name="callNumber" Type="String" />
            <asp:Parameter Name="Genre" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Availability" Type="Boolean" />
            <asp:Parameter Name="MediaType" Type="String" />
            <asp:Parameter Name="Copyright" Type="String" />
            <asp:Parameter Name="MaterialID" Type="Int32" />
        </UpdateParameters>
                    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" CssClass="table table-hover" gridlines="None" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaterialID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:TemplateField HeaderText="Image" SortExpression="Image">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" class="img-thumbnail" height="100px" ImageUrl='<%# Bind("Image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
            <asp:BoundField DataField="MediaType" HeaderText="MediaType" SortExpression="MediaType" />
            <asp:CheckBoxField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
            <asp:HyperLinkField DataNavigateUrlFields="MaterialID" DataNavigateUrlFormatString="Details.aspx?MaterialID={0}" Text="Details" />
        </Columns>
    </asp:GridView>
                    </div>
            </div>
        </div>
      
        <br />





<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg ">
    <div class="modal-content">
      <div class="modal-header">
        <a class="close" data-dismiss="modal" aria-hidden="true">&times;</a>
        <h4 class="modal-title" id="myModalLabel">Add a New Material</h4>
      </div>
      <div class="modal-body">
          <div class="container">
        
           <div class="row">
                <div class="col-md-6 col-md-offset-1">
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
                                    <asp:DropDownList CssClass="form-control" ID="listCategory" DataSourceID="SqlDataSource2" runat="server" DataTextField="Category" ></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT [Category] FROM [Category]"></asp:SqlDataSource>
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
                                   <asp:FileUpload ID="FileUpload1" runat="server" />
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
            <asp:Label ID="errorLabel" cssclass="" runat="server" Text=""></asp:Label>
        </div>    
                
                
                </div>
               </div>
    
    </div>
       </div>
    </div>
  </div>
</div>  
        </div>  
</asp:Content>

