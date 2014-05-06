<%@ Page Title="Item Details" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
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
      <div class="panel panel-primary">
                         <div class="panel-heading">
                            <h3 class="panel-title">Material Details</h3>
                         </div>
      <div class="row">
           <div class="col-md-10 col-md-offset-1">
                <div class="row">
               <div class="col-md-4 col-md-offset-1">
                   <br />
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <asp:Image ID="Image1" cssclass="img-responsive" runat="server" height="400px" ImageUrl='<%# Bind("Image") %>' />
                        </ItemTemplate>
                    </asp:FormView>
                    <br />
                </div> <!-- /col-md-4 col-md-offset-1 -->
         

        <div class="col-md-3 col-md-offset-1">
   <br />
            <br />
                <br />
                <br />
            <div class="row>">
                <div class="table table-responsive">
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaterialID" DataSourceID="SqlDataSource1">
                    <Fields>
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                        <asp:BoundField DataField="ISBNnumber" HeaderText="ISBNnumber" SortExpression="ISBNnumber" />
                        <asp:BoundField DataField="callNumber" HeaderText="callNumber" SortExpression="callNumber" />
                        <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                        <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
                        <asp:CheckBoxField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
                        <asp:BoundField DataField="MediaType" HeaderText="MediaType" SortExpression="MediaType" />
                        <asp:BoundField DataField="Copyright" HeaderText="Copyright" SortExpression="Copyright" />
                    </Fields>
                </asp:DetailsView>

               </div>       <!-- /table -->
            </div>
                <div class="row"><a href="~/searchMaterials.aspx" runat="server" class="btn btn-primary btn-lg" role="button">&laquo; Back</a></div>
            </div>          <!-- /col-md-4 col-md-offset-2 -->
        </div>              <!-- /row -->
    </div>                  <!-- /col-md-10 -->
  </div>                    <!-- /row -->
          <br />
        </div>              <!-- /panel -->
    <br />
        </div>              <!-- /container -->
</asp:Content>

