<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="OverDueReport.aspx.vb" Inherits="librarian_OverDueReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT * FROM [Rentals]"></asp:SqlDataSource>
                    
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="table-responsive">
                     <asp:GridView ID="GridView2" cssclass="table table-hover" gridlines="None" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="TransactionID">
                    <Columns>
                        <asp:BoundField DataField="TransactionID" HeaderText="Transaction ID" InsertVisible="False" ReadOnly="True" SortExpression="TransactionID" />
                        <asp:BoundField DataField="UserID" HeaderText="User ID" SortExpression="UserID" />
                        <asp:BoundField DataField="MaterialID" HeaderText="Material ID" SortExpression="MaterialID" />
                        <asp:BoundField DataField="ChkOutDate" HeaderText="Check-Out Date" SortExpression="ChkOutDate" />
                        <asp:BoundField DataField="DueDate" HeaderText="Due Date" SortExpression="DueDate" />
                    </Columns>
                         <EmptyDataTemplate>
                             There are no overdue materials at this time.
                         </EmptyDataTemplate>
                </asp:GridView>
                  
                  </div>
        </div>
    </div>
        </div>
</asp:Content>

