<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/AdminM.Master" CodeBehind="ManageFleet.aspx.cs" Inherits="ContainerManagementSystem.Admin.ManageFleet" %>


<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset>
                        <legend>Create Fleet</legend>
        
                        <ol>
                            <li>
                             <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Maroon"></asp:Label></li>
                           
                            <li>
                                <asp:Label ID="Label2" runat="server">Ship</asp:Label><br />
                                <asp:TextBox runat="server" ID="txtAircraft" BorderColor="Black" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAircraft"
                                    CssClass="field-validation-error" ErrorMessage="The Aircraft field is required." />
                            </li>

                             <li>
                                <asp:Label ID="Label1" runat="server">Total in Service</asp:Label><br />
                                <asp:TextBox runat="server" ID="txtTotalinService" BorderColor="Black"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTotalinService"
                                    CssClass="field-validation-error" ErrorMessage="The Service field is required." />
                            </li>

                             <li>
                                <asp:Label ID="Label4" runat="server">Ship Seats Capacity</asp:Label><br />
                                <asp:TextBox runat="server" ID="txtSeats" BorderColor="Black"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSeats"
                                    CssClass="field-validation-error" ErrorMessage="The Seats field is required." />
                            </li>

                             <li>
                                <asp:Label ID="Label5" runat="server">Ship Engines</asp:Label><br />
                                <asp:TextBox runat="server" ID="txtEngines" BorderColor="Black"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEngines"
                                    CssClass="field-validation-error" ErrorMessage="The Engines field is required." />
                            </li>

                             <li>
                                <asp:Label ID="Label6" runat="server">Cruising Speed</asp:Label><br />
                                <asp:TextBox runat="server" ID="txtCruisingSpeed" BorderColor="Black"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCruisingSpeed"
                                    CssClass="field-validation-error" ErrorMessage="The Cruising Speed field is required." />
                            </li>
                            <li>
                                
                        <asp:Button ID="Button1" runat="server"  Text="Add Fleet" OnClick="Button1_Click" />
                            </li>
                           
                        </ol>
             
                    </fieldset>
</asp:Content>
