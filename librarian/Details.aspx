<%@ Page Title="Item Details - Librarian" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="librarian_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="container">
        <div class="panel panel-primary">
                         <div class="panel-heading"><h3 class="panel-title">Material Details</h3></div>
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="row">
        <div class="col-md-4 col-md-offset-1">
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT * FROM [Materials] WHERE ([MaterialID] = @MaterialID)" DeleteCommand="DELETE FROM [Materials] WHERE [MaterialID] = @MaterialID" InsertCommand="INSERT INTO [Materials] ([Title], [Author], [ISBNnumber], [callNumber], [Genre], [Publisher], [Image], [Availability], [MediaType], [Copyright]) VALUES (@Title, @Author, @ISBNnumber, @callNumber, @Genre, @Publisher, @Image, @Availability, @MediaType, @Copyright)" UpdateCommand="UPDATE [Materials] SET [Title] = @Title, [Author] = @Author, [ISBNnumber] = @ISBNnumber, [callNumber] = @callNumber, [Genre] = @Genre, [Publisher] = @Publisher, [Image] = @Image, [Availability] = @Availability, [MediaType] = @MediaType, [Copyright] = @Copyright WHERE [MaterialID] = @MaterialID">
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
                            <SelectParameters>
                                <asp:QueryStringParameter Name="MaterialID" QueryStringField="MaterialID" Type="Int32" />
                            </SelectParameters>
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

                    
                    <br />
                    <br />
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="MaterialID">
                        <EditItemTemplate>
                            MaterialID:
                            <asp:Label ID="MaterialIDLabel1" runat="server" Text='<%# Eval("MaterialID") %>' />
                            <br />
                            Title:
                            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                            <br />
                            Author:
                            <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                            <br />
                            ISBNnumber:
                            <asp:TextBox ID="ISBNnumberTextBox" runat="server" Text='<%# Bind("ISBNnumber") %>' />
                            <br />
                            callNumber:
                            <asp:TextBox ID="callNumberTextBox" runat="server" Text='<%# Bind("callNumber") %>' />
                            <br />
                            Genre:
                            <asp:TextBox ID="GenreTextBox" runat="server" Text='<%# Bind("Genre") %>' />
                            <br />
                            Publisher:
                            <asp:TextBox ID="PublisherTextBox" runat="server" Text='<%# Bind("Publisher") %>' />
                            <br />
                            Image:
                            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                            <br />
                            Availability:
                            <asp:CheckBox ID="AvailabilityCheckBox" runat="server" Checked='<%# Bind("Availability") %>' />
                            <br />
                            MediaType:
                            <asp:TextBox ID="MediaTypeTextBox" runat="server" Text='<%# Bind("MediaType") %>' />
                            <br />
                            Copyright:
                            <asp:TextBox ID="CopyrightTextBox" runat="server" Text='<%# Bind("Copyright") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            Title:
                            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                            <br />
                            Author:
                            <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                            <br />
                            ISBNnumber:
                            <asp:TextBox ID="ISBNnumberTextBox" runat="server" Text='<%# Bind("ISBNnumber") %>' />
                            <br />
                            callNumber:
                            <asp:TextBox ID="callNumberTextBox" runat="server" Text='<%# Bind("callNumber") %>' />
                            <br />
                            Genre:
                            <asp:TextBox ID="GenreTextBox" runat="server" Text='<%# Bind("Genre") %>' />
                            <br />
                            Publisher:
                            <asp:TextBox ID="PublisherTextBox" runat="server" Text='<%# Bind("Publisher") %>' />
                            <br />
                            Image:
                            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                            <br />
                            Availability:
                            <asp:CheckBox ID="AvailabilityCheckBox" runat="server" Checked='<%# Bind("Availability") %>' />
                            <br />
                            MediaType:
                            <asp:TextBox ID="MediaTypeTextBox" runat="server" Text='<%# Bind("MediaType") %>' />
                            <br />
                            Copyright:
                            <asp:TextBox ID="CopyrightTextBox" runat="server" Text='<%# Bind("Copyright") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" height="400px" ImageUrl='<%# Bind("Image") %>' />
                        </ItemTemplate>
                    </asp:FormView>


                    <br />

            <asp:Label ID="lbl_DeletedMaterial" runat="server" Text=""></asp:Label>
                </div>
         
        <div class="col-md-3 col-md-offset-1">
                <br />
                <br />
            <br />
                <br />
                <div class="table table-responsive">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MaterialID" DataSourceID="SqlDataSource1">
                    <Fields>
                        <asp:BoundField DataField="MaterialID" HeaderText="MaterialID" InsertVisible="False" ReadOnly="True" SortExpression="MaterialID" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                        <asp:BoundField DataField="ISBNnumber" HeaderText="ISBNnumber" SortExpression="ISBNnumber" />
                        <asp:BoundField DataField="callNumber" HeaderText="callNumber" SortExpression="callNumber" />
                        <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                        <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                        <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
                        <asp:CheckBoxField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
                        <asp:BoundField DataField="MediaType" HeaderText="MediaType" SortExpression="MediaType" />
                        <asp:BoundField DataField="Copyright" HeaderText="Copyright" SortExpression="Copyright" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Fields>
                </asp:DetailsView>
               </div>
                </div>
            </div>
   </div>
      </div>
        </div>
        </div>
          
</asp:Content>

