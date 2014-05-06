<%@ Page Title="Library Materials" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SearchMaterials.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br /><br />
    <div class="container">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT * FROM [Materials]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" CssClass="table table-hover" PagerStyle-CssClass="pagination" GridLines="None" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaterialID" DataSourceID="SqlDataSource1" PageSize="5">
        <Columns>
            <asp:TemplateField HeaderText="Image" SortExpression="Image">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" height="100px" class="img-thumbnail" ImageUrl='<%# Bind("Image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="MediaType" HeaderText="MediaType" SortExpression="MediaType" />
            <asp:CheckBoxField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
            <asp:HyperLinkField DataNavigateUrlFields="MaterialID" DataNavigateUrlFormatString="Details.aspx?MaterialID={0}" Text="Details" />
        </Columns>
    </asp:GridView>
                    </div>
            </div>
        </div>
    </div>
    
</asp:Content>

