<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/AdminM.Master" CodeBehind="CreateVessles.aspx.cs" Inherits="ContainerManagementSystem.Admin.CreateVessles" %>


<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset>
                        <legend>Create Vessels</legend>
        
                        <ol>
                            <li>
                             <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Maroon"></asp:Label></li>
                           
                            <li>
                                <asp:Label ID="Label2" runat="server">ShipType</asp:Label><br />
                                <asp:TextBox runat="server" ID="txtShipType" BorderColor="Black" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtShipType"
                                    CssClass="field-validation-error" ErrorMessage="The ShipType field is required." />
                            </li>

                             <li>
                                <asp:Label ID="Label1" runat="server">Built</asp:Label><br />
                                <asp:TextBox runat="server" ID="txtBuilt" BorderColor="Black" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBuilt"
                                    CssClass="field-validation-error" ErrorMessage="The Built field is required." />
                            </li>

                             <li>
                                <asp:Label ID="Label4" runat="server">Size</asp:Label><br />
                                <asp:TextBox runat="server" ID="txtSize" BorderColor="Black"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSize"
                                    CssClass="field-validation-error" ErrorMessage="The Size field is required." />
                            </li>

                            

                             <li>
                                <asp:Label ID="Label6" runat="server">GT</asp:Label><br />
                                <asp:TextBox runat="server" ID="txtGT" BorderColor="Black"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtGT"
                                    CssClass="field-validation-error" ErrorMessage="The GT Speed field is required." />
                            </li>
                            <li><br />
                                <asp:Button ID="Button1" runat="server"  Text="Add Vessels" OnClick="Button1_Click" />
                            </li>
                           
                        </ol>
             
                        
                    </fieldset>
</asp:Content>

