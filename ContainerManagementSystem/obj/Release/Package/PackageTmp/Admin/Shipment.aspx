<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminM.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Shipment.aspx.cs" Inherits="ContainerManagementSystem.Admin.Shipment" %>


<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table width="100%" align="center">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDataBound="GridView1_RowDataBound">
                    <Columns>
                        <asp:TemplateField HeaderText="ShpID">
                            <ItemTemplate>
                                <asp:Label ID="txtShipmentID" runat="server" Text='<%#Eval("ShipmentID") %>' />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Label ID="lblShipmentID" runat="server" Width="40px" Text='<%#Eval("ShipmentID") %>' />
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="PackageType">
                            <ItemTemplate>
                                <asp:Label ID="lblPackageType" runat="server" Text='<%#Eval("PackageType") %>' />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%--<asp:TextBox ID="txtEmail" width="70px"  runat="server" Text='<%#Eval("PackageType") %>'/>--%>
                                <asp:DropDownList runat="server" ID="packagetypedrop">
                                    <asp:ListItem>Speed Post</asp:ListItem>
                                    <asp:ListItem>Normal</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                <asp:Label ID="lblPrice" runat="server" Text='<%#Eval("Price") %>' />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtPrice" Width="70px" runat="server" BorderColor="Black" Text='<%#Eval("Price") %>' />
                            </EditItemTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Weight">
                            <ItemTemplate>
                                <asp:Label ID="lblWeight" runat="server" Text='<%#Eval("Weight") %>' />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtWeight" Width="70px" runat="server" BorderColor="Black" Text='<%#Eval("Weight") %>' />
                            </EditItemTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:Label ID="lblDescription" runat="server" Text='<%#Eval("Description") %>' />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDescription" Width="70px" runat="server" BorderColor="Black" Text='<%#Eval("Description") %>' />
                            </EditItemTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <asp:Label ID="lblStatus" runat="server" Text='<%#Eval("Status") %>' />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtStatus" Width="70px" runat="server" BorderColor="Black" Text='<%#Eval("Status") %>' />
                            </EditItemTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField>
                            <EditItemTemplate>
                                <asp:Button ID="ButtonUpdate" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="ButtonCancel" runat="server" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Button ID="ButtonEdit" runat="server" CommandName="Edit" Text="Edit" />
                                <asp:Button ID="ButtonDelete" runat="server" CommandName="Delete" Text="Delete" />
                            </ItemTemplate>

                        </asp:TemplateField>

                        

                        <%--                        <asp:BoundField DataField="CustomerID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton runat="server" ID="editCustomer" Text="Edit" CommandName="Edit" CommandArgument="<%Eval('CustomerID') %>"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>  
                                <asp:LinkButton runat="server" ID="deleteCustomer" Text="Delete" CommandName="Delete" CommandArgument="<%Eval('CustomerID') %>"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>

    <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cmsdbConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>--%>
</asp:Content>
