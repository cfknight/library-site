<%@ Page Title="Library Hours" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="libraryhours.aspx.vb" Inherits="libraryhours" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
    .auto-style1 {
        font-weight: inherit;
        font-style: inherit;
        font-size: 100%;
        font-family: inherit;
        vertical-align: baseline;
        border-style: none;
        border-color: inherit;
        border-width: 0;
        margin: 0;
        padding: 0;
    }
    .auto-style2 {
        height: 20px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
     <div class="row">
            <div class="col-md-6 col-md-offset-3">
        
    <div class="panel ">
<center>
                   <h3 id="aboutus"> &nbsp;&nbsp;&nbsp;&nbsp; Hours of Operation</h3>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                Monday: 10:00 a.m. to 9:00 p.m. 
                <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         Tuesday: 10:00 a.m. to 9:00 p.m.<br />
&nbsp;Wednesday: 10:00 a.m. to 9:00 p.m. 
                <br />
         &nbsp;&nbsp;&nbsp;&nbsp;
         Thursday: 10:00 a.m. to 9:00 p.m.<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         Friday: 10:00 a.m. to 8:00 p.m. 
                   <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         Saturday: 10:00 a.m. to 6:00 p.m. 
                <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         Sunday: 12:00 p.m. to 5:00 p.m. 
             
                   <br />
                   <br />
                   <table cellspacing="0">
                       <tbody class="auto-style1">
                           <tr class="rowhead">
                               <td>Date</td>
                               <td>Holiday</td>
                               <td>Hours</td>
                           </tr>
                           <tr class="row1">
                               <td>Thursday, January 1, 2015</td>
                               <td>New Year&#39;s Day</td>
                               <td>Closed</td>
                           </tr>
                           <tr class="row2">
                               <td>Monday, January 19, 2015</td>
                               <td>ML King Jr. Day</td>
                               <td>Open 10-6</td>
                           </tr>
                           <tr class="row1">
                               <td>Monday, February 16, 2015</td>
                               <td>Presidents&#39; Day</td>
                               <td>Open 10-6</td>
                           </tr>
                           <tr class="row2">
                               <td>Monday, May 25, 2015</td>
                               <td>Memorial Day</td>
                               <td>Closed</td>
                           </tr>
                       </tbody>
                   </table>
</center>
       
        </div>
        </div>
       </div>
       </div>
</asp:Content>

