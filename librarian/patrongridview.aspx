<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="patrongridview.aspx.vb" Inherits="librarian_patrongridview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="input-group input-group-lg">
                <asp:TextBox ID="tb_searchPatron" AutoPostBack="true" Placeholder="Search by Last Name, First Name, or Phone Number" CssClass="form-control" runat="server"></asp:TextBox>
               
                 <span class="input-group-btn">
                 <asp:Button ID="btsearchPatorn" CssClass="btn btn-primary" runat="server" Text="Search" />
                 </span>
                </div>
                <br />
                </div>
                <br />
            
         </div>

        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="table-responsive">

 <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive" GridLines="None" AutoGenerateColumns="False" DataKeyNames="PatronID" DataSourceID="SqlDataSource1" AllowSorting="True" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="PatronID" HeaderText="PatronID" InsertVisible="False" ReadOnly="True" SortExpression="PatronID" />
                <asp:BoundField DataField="Fname" HeaderText="First Name" SortExpression="Fname" />
                <asp:BoundField DataField="Lname" HeaderText="Last Name" SortExpression="Lname" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Address2" HeaderText="Address2" SortExpression="Address2" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="PhoneNumber2" HeaderText="PhoneNumber2" SortExpression="PhoneNumber2" />
                <asp:BoundField DataField="email" HeaderText="Email " SortExpression="email" />
                <asp:HyperLinkField Text="View Details" DataNavigateUrlFields="patronID" DataNavigateUrlFormatString="patrondetailview.aspx?patronID={0}" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" DeleteCommand="DELETE FROM [Patron] WHERE [PatronID] = @PatronID" InsertCommand="INSERT INTO [Patron] ([Fname], [Lname], [Address], [Address2], [City], [State], [Zipcode], [PhoneNumber], [email], [PhoneNumber2], [Birthdate], [TotalFine], [userID]) VALUES (@Fname, @Lname, @Address, @Address2, @City, @State, @Zipcode, @PhoneNumber, @email, @PhoneNumber2, @Birthdate, @TotalFine, @userID)" SelectCommand="SELECT [PatronID], [Fname], [Lname], [Address], [Address2], [City], [State], [Zipcode], [PhoneNumber], [email], [PhoneNumber2], [Birthdate], [TotalFine], [userID] FROM [Patron]" UpdateCommand="UPDATE [Patron] SET [Fname] = @Fname, [Lname] = @Lname, [Address] = @Address, [Address2] = @Address2, [City] = @City, [State] = @State, [Zipcode] = @Zipcode, [PhoneNumber] = @PhoneNumber, [email] = @email, [PhoneNumber2] = @PhoneNumber2, [Birthdate] = @Birthdate, [TotalFine] = @TotalFine, [userID] = @userID WHERE [PatronID] = @PatronID">
            <DeleteParameters>
                <asp:Parameter Name="PatronID" Type="Int32" />
            </DeleteParameters>
           
        </asp:SqlDataSource>
                    <br />
    </div>
            </div>
        </div>
  </div>  
</asp:Content>

