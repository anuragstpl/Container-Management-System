<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminM.Master" AutoEventWireup="true" CodeBehind="ManageShipment.aspx.cs" Inherits="ContainerManagementSystem.Admin.ManageShipment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <table width="60%" align="center">
        <tr>
            <td>
                <fieldset>
                    <legend>Create Schedule</legend>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ShipmentID,CustomerID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="ShipmentID" HeaderText="ShipmentID" InsertVisible="False" ReadOnly="True" SortExpression="ShipmentID" />
                            <asp:BoundField DataField="PackageType" HeaderText="PackageType" SortExpression="PackageType" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                            <asp:TemplateField >
                                
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContainerConnectionString %>" SelectCommand="Select * from Shipment shp inner join Customer cst on shp.Custmid = cst.CustomerID;"></asp:SqlDataSource>
                </fieldset>
            </td>
        </tr>
    </table>

</asp:Content>
