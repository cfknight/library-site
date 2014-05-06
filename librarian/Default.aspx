<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="librarian_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="8000">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
        <asp:Image ID="Image2" ImageUrl="~/images/front/homepagebook-optimized.png" width="100%" runat="server" />
    </div>
    
    <div class="item">
        <asp:Image ID="Image3" ImageUrl="~/images/front/bookshelvesfrontpage-optimized.png" width="100%" runat="server" />    
    </div>
   
    <div class="item">
        <asp:Image ID="Image4" ImageUrl="~/images/front/frontpagelibrary-optimized.png" width="100%" runat="server" />
    </div>

        <div class="item">
        <asp:Image ID="Image5" ImageUrl="~/images/front/frontpagepublic-library-optimized.png" width="100%" runat="server" />
    </div>

        <div class="item">
        <asp:Image ID="Image6" ImageUrl="~/images/front/library2homepage-optimized.png" width="100%" runat="server" />
    </div>
  </div>
  
  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
        </div>


    <div class="container">
        
        <div class="col-md-12">
            <div class="row">
            <asp:Repeater ID="Repeater1" DataSourceID="SqlDataSource1" runat="server">
                <HeaderTemplate>
                    <div class="row">
                   <div class="col-md-12 page-header">
                        <div class="pull-right"><a href="SearchMaterials.aspx" class="pull-right">View All &raquo;</a></div>         
                                <h3>Featured Items</h3>
                  
                   </div>
                        
                        </div>
                </HeaderTemplate>
                <ItemTemplate>
                            <div class="col-md-4">
                        <div class="panel panel-primary grayback grad">
                                <div class="repeater grad">
                                    <asp:Image ID="Image1" ImageAlign="Middle" CssClass="repeaterImage" runat="server" ImageUrl='<%# Eval("Image")%>' /><br />
                                    <h4><asp:Label CssClass="" ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label></h4>
                                    <p><asp:Label ID="Label2" CssClass="" runat="server" Text='<%# Bind("Author") %>'></asp:Label></p>
                                </div>
                                <asp:HyperLink CssClass="btn btn-primary seemore" ID="seemore" runat="server" NavigateUrl='<%# Eval("MaterialID", "Details.aspx?MaterialID={0}")%>' Text="Item Details"></asp:HyperLink>        
                               </div>
                            </div>
                </ItemTemplate>
            </asp:Repeater>
                </div>
        </div>

     
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT Top 3 MaterialID, Title, Author, Image FROM Materials Order by Title"></asp:SqlDataSource>
    
   
</asp:Content>

