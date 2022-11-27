<%@ Page Title="" Language="C#" MasterPageFile="~/Partner/PartnerM1.Master" enableEventValidation="false" AutoEventWireup="true" CodeBehind="CreateShipment.aspx.cs" Inherits="ContainerManagementSystem.Partner.CreateShipment" %>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset>
                        <legend>Create Shipment</legend>
                        <ol>
                            <li>
                                <asp:Label ID="Label1" runat="server">Package Type</asp:Label>
                               <asp:DropDownList runat="server" ID="packagetypedrop">
                                   <asp:ListItem>Speed Post</asp:ListItem>
                                   <asp:ListItem>Normal</asp:ListItem>
                               </asp:DropDownList>

                                <asp:Button ID="Button2" runat="server" Text="Check Schedule" CausesValidation="False" OnClick="Button2_Click"/><asp:Label ID="lblmsg1" runat="server"></asp:Label>
                               
                            </li>
                            <li>
                                <asp:Label ID="Label2" runat="server">Price</asp:Label><br />

                                <asp:TextBox runat="server" ID="Price" BorderColor="Black"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Price"
                                    CssClass="field-validation-error" ErrorMessage="The price field is required." />
                            </li>
                            <li>
                                <asp:Label ID="Label3" runat="server">Weight</asp:Label><br />
                                <asp:TextBox runat="server" ID="Weight" BorderColor="Black" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Weight"
                                    CssClass="field-validation-error" ErrorMessage="The weight is required." />
                            </li>

                         

                            <li>
                                
                                <asp:Label ID="Label5" runat="server">Customer List</asp:Label><br />
                               <asp:DropDownList runat="server" ID="ddlcustomer">
                                  
                               </asp:DropDownList>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlcustomer"
                                    CssClass="field-validation-error" ErrorMessage="The Customer is required." />
                               
                            </li>
                            <li>
                                <asp:Label ID="Label4" runat="server">Description</asp:Label><br />
                                <asp:TextBox runat="server" ID="Description" BorderColor="Black"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Description"
                                     CssClass="field-validation-error"  ErrorMessage="The Description field is required." />
                            </li>
                            <li>
                                 <asp:Button ID="Button1" runat="server"  Text="Add Shipping" OnClick="Button1_Click" />
                            </li>
                        </ol>
             
                       
                    </fieldset>
</asp:Content>
