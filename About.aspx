<%@ Page Title="About Us" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
     <div class="row">

     <div class="col-md-6">
         <asp:Image ID="aboutUspic"  runat="server" height="100%"  ImageUrl ="~/images/kids-optimized.png" />   
        
     </div>            
                     
     <div class="col-md-5 col-md-offset-1">       
       <br />
       <br />
       <br />
        <p >         
    
              The South Liberty Public Library is the premier community resource.

               Whether you are loooking for local events, childrens and family 

               activities or just a good book, South Liberty Public Library has 

               something for you.
        </p>
        <p >    Our building has great facilities for any type of meeting. With four 

                group meeting rooms, thousands of print and electronic resources, 

                 and even a vast selection of movies and videos, we have something for 

                 the learner at every age to enjoy.</p>
        <p >Give us a call about our upcoming children and family events. </p>
        <h3 class="fontred">Upcoming Events:</h3>
        
            <ul>
                      <li >5/5 Cinco de Mayo family evening</li>
                      <li >5/15 Little Learners Reading Circle</li>
                      <li >6/2 Summer Reading Program Begins </li>
                      <li >7/4 Independence Day Community Day</li>
           </ul>
        
    </div>
  </div> 
    <br />
    <br />
</div>
</asp:Content>

