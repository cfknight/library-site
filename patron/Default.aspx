

<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="patron_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">My Profile</h3>
        </div>
            <div class ="row">
            <div class="col-md-10 col-md-offset-1">
                <h3 class="navytext">Personal Information:</h3><br />
                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="PatronID">
                    <EditItemTemplate>
                        PatronID:
                        <asp:Label ID="PatronIDLabel1" runat="server" Text='<%# Eval("PatronID") %>' />
                        <br />
                        userID:
                        <asp:TextBox ID="userIDTextBox" runat="server" Text='<%# Bind("userID") %>' />
                        <br />
                        Fname:
                        <asp:TextBox ID="FnameTextBox" runat="server" Text='<%# Bind("Fname") %>' />
                        <br />
                        Lname:
                        <asp:TextBox ID="LnameTextBox" runat="server" Text='<%# Bind("Lname") %>' />
                        <br />
                        Birthdate:
                        <asp:TextBox ID="BirthdateTextBox" runat="server" Text='<%# Bind("Birthdate") %>' />
                        <br />
                        Address:
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        <br />
                        Address2:
                        <asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>' />
                        <br />
                        City:
                        <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                        <br />
                        State:
                        <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                        <br />
                        Zipcode:
                        <asp:TextBox ID="ZipcodeTextBox" runat="server" Text='<%# Bind("Zipcode") %>' />
                        <br />
                        PhoneNumber:
                        <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                        <br />
                        PhoneNumber2:
                        <asp:TextBox ID="PhoneNumber2TextBox" runat="server" Text='<%# Bind("PhoneNumber2") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        TotalFine:
                        <asp:TextBox ID="TotalFineTextBox" runat="server" Text='<%# Bind("TotalFine") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        Sorry, your data cannot be retrieved at this time.
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        userID:
                        <asp:TextBox ID="userIDTextBox" runat="server" Text='<%# Bind("userID") %>' />
                        <br />
                        Fname:
                        <asp:TextBox ID="FnameTextBox" runat="server" Text='<%# Bind("Fname") %>' />
                        <br />
                        Lname:
                        <asp:TextBox ID="LnameTextBox" runat="server" Text='<%# Bind("Lname") %>' />
                        <br />
                        Birthdate:
                        <asp:TextBox ID="BirthdateTextBox" runat="server" Text='<%# Bind("Birthdate") %>' />
                        <br />
                        Address:
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        <br />
                        Address2:
                        <asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>' />
                        <br />
                        City:
                        <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                        <br />
                        State:
                        <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                        <br />
                        Zipcode:
                        <asp:TextBox ID="ZipcodeTextBox" runat="server" Text='<%# Bind("Zipcode") %>' />
                        <br />
                        PhoneNumber:
                        <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                        <br />
                        PhoneNumber2:
                        <asp:TextBox ID="PhoneNumber2TextBox" runat="server" Text='<%# Bind("PhoneNumber2") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        TotalFine:
                        <asp:TextBox ID="TotalFineTextBox" runat="server" Text='<%# Bind("TotalFine") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        Patron ID:
                        <asp:Label ID="PatronIDLabel" runat="server" Text='<%# Eval("PatronID") %>' />
                        <br />
                        User ID:
                        <asp:Label ID="userIDLabel" runat="server" Text='<%# Bind("userID") %>' />
                        <br />
                        First Name:
                        <asp:Label ID="FnameLabel" runat="server" Text='<%# Bind("Fname") %>' />
                        <br />
                        Last Name:
                        <asp:Label ID="LnameLabel" runat="server" Text='<%# Bind("Lname") %>' />
                        <br />
                        Birth Date:
                        <asp:Label ID="BirthdateLabel" runat="server" Text='<%# Bind("Birthdate") %>' />
                        <br />
                        Address:
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                        <br />
                        Address 2:
                        <asp:Label ID="Address2Label" runat="server" Text='<%# Bind("Address2") %>' />
                        <br />
                        City:
                        <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                        <br />
                        State:
                        <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                        <br />
                        Zip Code:
                        <asp:Label ID="ZipcodeLabel" runat="server" Text='<%# Bind("Zipcode") %>' />
                        <br />
                        Phone Number:
                        <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                        <br />
                        Phone Number 2:
                        <asp:Label ID="PhoneNumber2Label" runat="server" Text='<%# Bind("PhoneNumber2") %>' />
                        <br />
                        Email Address:
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        TotalFine:
                        <asp:Label ID="TotalFineLabel" runat="server" Text='<%# Bind("TotalFine") %>' />
                        <br />
                    </ItemTemplate>
                </asp:FormView>
        <br />
        </div>
                </div>
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
            <!-- Insert Checked-Out Gridview Here-->
            <h3 class="navytext">Checked Out Materials:</h3><br />
                <div class="table-responsive"></div>
            <asp:GridView ID="GridView1" cssclass="table table-hover" gridlines="None" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource2">
                <EmptyDataTemplate>
                    You have no materials checked out at this time.
                </EmptyDataTemplate>
                </asp:GridView>
        </div>
            </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT * FROM [Patron] WHERE ([UserID] = @UserID)">
        <SelectParameters>
            <asp:Parameter Name="UserID" Type="Object" />
        </SelectParameters>
    </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT * FROM [Rentals] WHERE ([UserID] = @UserID)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="" Name="UserID" Type="Object" />
                    </SelectParameters>
                </asp:SqlDataSource>
 </div>
 </div>
</asp:Content>

