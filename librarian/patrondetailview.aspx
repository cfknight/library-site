<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="patrondetailview.aspx.vb" Inherits="librarian_patrondetailview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<title>View, Edit & Delete Patron Details</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:FormView ID="FormView1" runat="server" DataKeyNames="PatronID" DataSourceID="SqlDataSource1" AllowPaging="True">


        <EditItemTemplate>
            <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
        
    <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Edit Patron</h3>
            </div>
            <table>

            <tr>
                <td align="right">First Name:</td> <td align="left"><asp:TextBox ID="FnameTextBox" runat="server" Text='<%# Bind("Fname") %>' /></td>
            </tr>

             <tr>
                <td align="right">Last Name:</td> <td align="left"><asp:TextBox ID="LnameTextBox" runat="server" Text='<%# Bind("Lname") %>' /></td>
            </tr >

            <tr>
                <td align="right">Date of Birth: </td> <td align="left"><asp:TextBox ID="BirthdateTextBox" runat="server" Text='<%# Bind("Birthdate") %>' /></td>
            </tr>

            <tr>
                <td align="right">Address: </td> <td align="left"><asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' /></td>
            </tr>

            <tr>
                <td align="right">Address2: </td> <td align="left"><asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>' /></td>
           </tr>
            
            <tr>
                 <td align="right">City:</td> <td align="left"><asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' /></td>
            </tr>

            <tr>
            <td align="right">State:</td> <td align="left"><asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' /></td>
            </tr>

            <tr>
             <td align="right">Zipcode: </td> <td align="left"><asp:TextBox ID="ZipcodeTextBox" runat="server" Text='<%# Bind("Zipcode") %>' /></td>
            </tr>

            <tr>
                <td align="right">Phone Number:</td> <td align="left"><asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' /></td>
           </tr>

            <tr>
            <td align="right">PhoneNumber2:</td> <td align="left"><asp:TextBox ID="PhoneNumber2TextBox" runat="server" Text='<%# Bind("PhoneNumber2") %>' /></td>
            </tr>
            
            <tr>
            <td align="right">Email: </td> <td align="left"> <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' /></td>
            </tr>

             <tr>
            <td align="right">Total Fine: </td> <td align="left"><asp:TextBox ID="TotalFineTextBox" runat="server" Text='<%# Bind("TotalFine") %>' /></td>
            </tr>

                <tr>
				<td> &nbsp; </td><td> &nbsp; </td>
			</tr>

                <caption>
                    <br />
                    <br />
                    <tr>
                        <td align="right">PatronID: </td>
                        <td align="left">
                            <asp:Label ID="PatronIDLabel1" runat="server" Text='<%# Eval("PatronID") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">userID: </td>
                        <td align="left">
                            <asp:Label ID="lbl_userID" runat="server" enabled="false" readonly="false" Text='<%# Bind("userID") %>' />
                        </td>
                    </tr>
                    <caption>
                        <br />
                        <br />
                    </caption>
                </caption>
                </table>
           </br>
           <center>
            <asp:LinkButton ID="UpdateButton" runat="server" CssClass="btn btn-lg btn-primary btn-block"  CausesValidation="True" CommandName="Update" Text="Update" width="100px"></asp:LinkButton>


            <asp:LinkButton ID="UpdateCancelButton" runat="server" CssClass="btn btn-lg btn-primary btn-block" CausesValidation="False" CommandName="Cancel" Text="Cancel" width="100px"></asp:LinkButton>
          </center>
               </div>
</div>
</div> 
     </div>
        </EditItemTemplate>


        <InsertItemTemplate>
          
             

        </InsertItemTemplate>


        <ItemTemplate>
           <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
        
    <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Patron Details</h3>
            </div>
            <table>

            <tr>
                <td align="right">First Name:</td> <td align="left"><asp:TextBox ID="FnameTextBox" runat="server"  enabled="false" Text='<%# Bind("Fname") %>' /></td>
            </tr>

             <tr>
                <td align="right">Last Name:</td> <td align="left"><asp:TextBox ID="LnameTextBox" runat="server"  enabled="false" Text='<%# Bind("Lname") %>' /></td>
            </tr >

            <tr>
                <td align="right">Date of Birth: </td> <td align="left"><asp:TextBox ID="BirthdateTextBox" runat="server"  enabled="false" Text='<%# Bind("Birthdate") %>' /></td>
            </tr>

            <tr>
                <td align="right">Address: </td> <td align="left"><asp:TextBox ID="AddressTextBox" runat="server"  enabled="false" Text='<%# Bind("Address") %>' /></td>
            </tr>

            <tr>
                <td align="right">Address2: </td> <td align="left"><asp:TextBox ID="Address2TextBox" runat="server"  enabled="false" Text='<%# Bind("Address2") %>' /></td>
           </tr>
            
            <tr>
                 <td align="right">City:</td> <td align="left"><asp:TextBox ID="CityTextBox" runat="server"  enabled="false" Text='<%# Bind("City") %>' /></td>
            </tr>

            <tr>
            <td align="right">State:</td> <td align="left"><asp:TextBox ID="StateTextBox" runat="server"  enabled="false" Text='<%# Bind("State") %>' /></td>
            </tr>

            <tr>
             <td align="right">Zipcode: </td> <td align="left"><asp:TextBox ID="ZipcodeTextBox" runat="server"  enabled="false" Text='<%# Bind("Zipcode") %>' /></td>
            </tr>

            <tr>
                <td align="right">Phone Number:</td> <td align="left"><asp:TextBox ID="PhoneNumberTextBox" runat="server"  enabled="false" Text='<%# Bind("PhoneNumber") %>' /></td>
           </tr>

            <tr>
            <td align="right">PhoneNumber2:</td> <td align="left"><asp:TextBox ID="PhoneNumber2TextBox" runat="server"  enabled="false" Text='<%# Bind("PhoneNumber2") %>' /></td>
            </tr>
            
            <tr>
            <td align="right">Email: </td> <td align="left"> <asp:TextBox ID="emailTextBox" runat="server"  enabled="false" Text='<%# Bind("email") %>' /></td>
            </tr>

             <tr>
            <td align="right">Total Fine: </td> <td align="left"><asp:TextBox ID="TotalFineTextBox" runat="server"  enabled="false" Text='<%# Bind("TotalFine") %>' /></td>
            </tr>

                <tr>
				<td> &nbsp; </td><td> &nbsp; </td>
			</tr>

                <caption>
                    <br />
                    <br />
                    <tr>
                        <td align="right">PatronID: </td><td align="left">
                            <asp:Label ID="PatronIDLabel1" runat="server" Text='<%# Eval("PatronID") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">userID: </td>
                        <td align="left">
                            <asp:label ID="lbl_userID" runat="server" enabled="false" readonly="false" Text='<%# Bind("userID") %>' />
                        </td>
                    </tr>
                    <caption>
                        <br />
                        <br />
                    </caption>
                </caption>
                </table>
           </br>
        <center>
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="btn btn-lg btn-primary btn-block" Width="100px"/>
            <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="btn btn-lg btn-primary btn-block" Width="100px"/>
           
            </center>
        </ItemTemplate>
    </asp:FormView>

    <br />
<asp:Label ID="lbl_DeletedCustomer" runat="server" Text=""></asp:Label>
<br />
       

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" DeleteCommand="DELETE FROM [Patron] WHERE [PatronID] = @PatronID" InsertCommand="INSERT INTO [Patron] ([userID], [Fname], [Lname], [Birthdate], [Address], [Address2], [City], [State], [Zipcode], [PhoneNumber], [PhoneNumber2], [email], [TotalFine]) VALUES (@userID, @Fname, @Lname, @Birthdate, @Address, @Address2, @City, @State, @Zipcode, @PhoneNumber, @PhoneNumber2, @email, @TotalFine)" SelectCommand="SELECT * FROM [Patron] WHERE ([PatronID] = @PatronID)" UpdateCommand="UPDATE [Patron] SET [userID] = @userID, [Fname] = @Fname, [Lname] = @Lname, [Birthdate] = @Birthdate, [Address] = @Address, [Address2] = @Address2, [City] = @City, [State] = @State, [Zipcode] = @Zipcode, [PhoneNumber] = @PhoneNumber, [PhoneNumber2] = @PhoneNumber2, [email] = @email, [TotalFine] = @TotalFine WHERE [PatronID] = @PatronID">
        <DeleteParameters>
            <asp:Parameter Name="PatronID" Type="Int32" />
        </DeleteParameters>

        <InsertParameters>
           
        </InsertParameters>

        <SelectParameters>
            <asp:QueryStringParameter Name="PatronID" QueryStringField="patronID" Type="Int32" />
        </SelectParameters>

        <UpdateParameters>
            <asp:Parameter Name="userID" />
            <asp:Parameter Name="Fname" Type="String" />
            <asp:Parameter Name="Lname" Type="String" />
            <asp:Parameter Name="Birthdate" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Address2" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zipcode" Type="Int32" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="PhoneNumber2" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="TotalFine" Type="Decimal" />
            <asp:Parameter Name="PatronID" Type="Int32" />
        </UpdateParameters>

    </asp:SqlDataSource>
       

</asp:Content>

