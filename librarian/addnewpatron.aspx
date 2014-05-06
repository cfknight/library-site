<%@ Page Title="Add a New Patron" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="addnewpatron.aspx.vb" Inherits="addnewpatron" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
        
    <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Create a New Patron</h3>
            </div>
   
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CreateUserButtonText="Continue " StepPreviousButtonText="Back" CellPadding="5" CellSpacing="5">
      
        <CreateUserButtonStyle  CssClass="btn btn-lg btn-primary btn-block" Height="45px" />
        <WizardSteps>
           
            <asp:CreateUserWizardStep runat="server">


            </asp:CreateUserWizardStep>

            <asp:WizardStep ID="userprofile" runat="server" StepType="Step" Title="userprofile">
                <table style="border-collapse:separate;
                            border-spacing:5px 8px;">

                <tr>
                        <td align="right">First Name:</td><td align="left" ><asp:Textbox ID="tb_FirstName" runat="server" colunmns="50"></asp:Textbox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" 
                                    ControlToValidate="tb_FirstName" ErrorMessage="First name is required." 
                                    ToolTip="First name is required.">
                                    <span class="glyphicon glyphicon-warning-sign form-control-feedback"> Please enter a First Name.</span>
                    </asp:RequiredFieldValidator>
                            </td>
                </tr>

                    <tr>
                        <td align="right" >Last Name:</td><td align="left" ><asp:Textbox ID="tb_Lastname" runat="server" colunmns="50"></asp:Textbox></td>
                        
                         <td>
                            <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" 
                                    ControlToValidate="tb_LastName" ErrorMessage="Last name is required." 
                                    ToolTip="Last Name is required.">
                                    <span class="glyphicon glyphicon-warning-sign form-control-feedback"> Please enter a Last Name.</span>
                    </asp:RequiredFieldValidator>
                            </td>    
                        
                        
                         </tr>
                    <tr>
                        <td align="right" class="auto-style2" >Birth Date:</td><td align="left" class="auto-style2" ><asp:Textbox ID="tb_birthdate" runat="server" colunmns="50"></asp:Textbox></td>
                        
                         <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="tb_birthdate" ErrorMessage="Birth Date is required." 
                                    ToolTip="Birth Date is required.">
                                    <span class="glyphicon glyphicon-warning-sign form-control-feedback"> Please enter a Birth Date.</span>
                    </asp:RequiredFieldValidator>
                            </td>
                    
                    </tr>
                    <tr>
                        <td align="right" class="auto-style1">Address:</td><td align="left" class="auto-style1" ><asp:Textbox ID="tb_address" runat="server" colunmns="50"></asp:Textbox></td>
                        
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="tb_address" ErrorMessage="Address is required." 
                                    ToolTip="Address is required.">
                                    <span class="glyphicon glyphicon-warning-sign form-control-feedback"> Please enter an Address.</span>
                    </asp:RequiredFieldValidator>
                            </td>
                    
                    
                    </tr>
                    <tr>
                        <td align="right">Address 2:</td><td align="left" ><asp:Textbox ID="tb_address2" runat="server" colunmns="50"></asp:Textbox></td>
                        
                    
                    </tr>

                    <tr>
                        <td align="right">City:</td><td align="left" ><asp:Textbox ID="tb_city" runat="server" colunmns="50"></asp:Textbox></td>
                        
                          <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="tb_city" ErrorMessage="City is required." 
                                    ToolTip="City is required.">
                                    <span class="glyphicon glyphicon-warning-sign form-control-feedback"> Please enter a City.</span>
                    </asp:RequiredFieldValidator>
                            </td>
                    
                    </tr>
                    <tr>
                        <td align="right">State:</td><td align="left" ><asp:DropDownList ID="ddl_State"  runat="server" DataSourceID="SqlDataSource1" DataTextField="State" DataValueField="State" AppendDataBoundItems="True"> 
                        
                            <asp:ListItem Value="0">Select State</asp:ListItem>
                         </asp:DropDownList> 
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT * FROM [StateCodes$]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" >Zip Code:</td><td align="left" ><asp:Textbox ID="tb_zipcode" runat="server" colunmns="50"></asp:Textbox></td>
                    
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="tb_zipcode" ErrorMessage="Zipcode is required." 
                                    ToolTip="Zipcode is required.">
                                    <span class="glyphicon glyphicon-warning-sign form-control-feedback"> Please enter a Zipcode.</span>
                    </asp:RequiredFieldValidator>
                            </td>
                    
                    </tr>
                    <tr>
                        <td align="right" >Phone Number:</td><td align="left" ><asp:Textbox ID="tb_phonenumber" runat="server" colunmns="50"></asp:Textbox></td>
                        
                         <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="tb_phonenumber" ErrorMessage="Phone Number is required." 
                                    ToolTip="Phone Number is required.">
                                    <span class="glyphicon glyphicon-warning-sign form-control-feedback"> Please enter a Phone Number.</span>
                    </asp:RequiredFieldValidator>
                            </td>
                    
                    </tr>
                    <tr>
                        <td align="right">Phone Number 2:</td><td align="left" ><asp:Textbox ID="tb_phonenumber2" runat="server" colunmns="50"></asp:Textbox></td>
                    

                    
                    
                    </tr>
                    <tr>
                        <td align="right" >Email Address:</td><td align="left" ><asp:Textbox ID="tb_email" runat="server" colunmns="50"></asp:Textbox></td>
                        
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="tb_email" ErrorMessage="E-mail is required." 
                                    ToolTip="E-mail is required.">
                                    <span class="glyphicon glyphicon-warning-sign form-control-feedback"> Please enter an E-mail Adress.</span>
                    </asp:RequiredFieldValidator>
                            </td>
                    
                    </tr>
                    
                    </table>
            </asp:WizardStep>
          
                <asp:CompleteWizardStep runat="server" >
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td align="center">
                                    Complete</td>
                                </tr>
                            <tr>
                                <td align="center"> Your Account has been successfully created! 
                                    </td>
                                </tr>
                              </table>
                        </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
      
      
        <StepNextButtonStyle borderwidth="5px" CssClass="btn btn-lg btn-primary btn-block" />
        <StepPreviousButtonStyle  borderwidth="5px" CssClass="btn btn-lg btn-primary btn-block" />
       
            </asp:CreateUserWizard>
      
   </div>
</div>
</div> 
     </div>
</asp:Content>

