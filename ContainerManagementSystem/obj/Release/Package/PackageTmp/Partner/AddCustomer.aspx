<%@ Page Title="" Language="C#" MasterPageFile="~/Partner/PartnerM1.Master" AutoEventWireup="true" CodeBehind="AddCustomer.aspx.cs" Inherits="ContainerManagementSystem.Partner.AddCustomer" %>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset>
                        <legend>Add New Customer</legend>
                        <ol>
                            <li>
                                <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName">Customer name</asp:Label>
                                <asp:TextBox runat="server" ID="UserName" BorderColor="Black" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                            </li>

                              <li>
                                <asp:Label ID="Label5" runat="server" AssociatedControlID="UserName">Password</asp:Label>
                                <asp:TextBox runat="server" ID="txtpwd" BorderColor="Black" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpwd"
                                    CssClass="field-validation-error" ErrorMessage="The Password field is required." />
                            </li>
                            <li>
                                <asp:Label ID="Label2" runat="server" AssociatedControlID="Email">Email address</asp:Label>
                                <asp:TextBox runat="server" ID="Email" BorderColor="Black" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="The email address field is required." />
                            </li>
                            <li>
                                <asp:Label ID="Label3" runat="server" AssociatedControlID="Address">Address</asp:Label>
                                <asp:TextBox runat="server" ID="Address"  BorderColor="Black" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Address"
                                    CssClass="field-validation-error" ErrorMessage="The address field is required." />
                            </li>

                             
                            <li>
                                <asp:Label ID="Label4" runat="server" AssociatedControlID="PhoneNo">Phone No.</asp:Label>
                                <asp:TextBox runat="server" ID="PhoneNo" BorderColor="Black" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PhoneNo"
                                     CssClass="field-validation-error"  ErrorMessage="The phoneNo field is required." />
                            </li>
                            <li>
                                <br />

                                <asp:Button ID="Button1" runat="server"  Text="Add Customer" OnClick="Button1_Click" />
                            </li>
                        </ol>
             
                        
                    </fieldset>
</asp:Content>
