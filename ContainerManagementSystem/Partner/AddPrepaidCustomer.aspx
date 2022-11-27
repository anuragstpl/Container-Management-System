<%@ Page Title="" Language="C#" MasterPageFile="~/Partner/PartnerM1.Master" AutoEventWireup="true" CodeBehind="AddPrepaidCustomer.aspx.cs" Inherits="ContainerManagementSystem.Partner.AddPrepaidCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td>

                <asp:Label ID="Label5" runat="server">Customer List</asp:Label><br />
               
            </td>
            <td>
                 <asp:DropDownList runat="server" ID="ddlcustomer" AutoPostBack="true">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlcustomer"
                    CssClass="field-validation-error" ErrorMessage="The Customer is required." />
            </td>
        </tr>
        <tr>
            <td>
                Add Amount for Customer
            </td>
            <td>
                <asp:TextBox runat="server" ID="txtamount"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtamount"
                    CssClass="field-validation-error" ErrorMessage="The amount is required." />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button runat="server" ID="btnAddPrepaid" Text="Add Prepaid" OnClick="btnAddPrepaid_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
