<%@ Page Title="" Language="C#" MasterPageFile="~/Partner/PartnerM1.Master" enableEventValidation="false" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="ContainerManagementSystem.Partner.Customers" %>


<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table width="100%" align="center">
        <tr>
            <td>
               
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                   
                </asp:ScriptManager>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand"  OnRowCancelingedit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting"  OnRowediting="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDataBound="GridView1_RowDataBound">
                    <Columns>
                        <asp:TemplateField HeaderText="CustmId">
    <ItemTemplate>
        <asp:Label ID="txtCustomerID" runat="server" Text='<%#Eval("CustomerID") %>'/>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:Label ID="lblCustomerID" runat="server" width="40px" Text='<%#Eval("CustomerID") %>'/>
    </EditItemTemplate>
   </asp:TemplateField>


                         <asp:TemplateField HeaderText="Password">
      <ItemTemplate>
         <asp:Label ID="lblPassword" runat="server" Text='<%#Eval("Password") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txtPassword" width="70px" BorderColor="Black"  runat="server" Text='<%#Eval("Password") %>'/>
     </EditItemTemplate>
    
 </asp:TemplateField>

                        <asp:TemplateField HeaderText="Email">
      <ItemTemplate>
         <asp:Label ID="lblEmail" runat="server" Text='<%#Eval("Email") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txtEmail" width="70px"  runat="server" BorderColor="Black" Text='<%#Eval("Email") %>'/>
     </EditItemTemplate>
    
 </asp:TemplateField>

                            <asp:TemplateField HeaderText="Address">
      <ItemTemplate>
         <asp:Label ID="lblAddress" runat="server" Text='<%#Eval("Address") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txtAddress" width="70px"  BorderColor="Black" runat="server" Text='<%#Eval("Address") %>'/>
     </EditItemTemplate>
    
 </asp:TemplateField>

                         <asp:TemplateField HeaderText="PhoneNo">
      <ItemTemplate>
         <asp:Label ID="lblPhoneNo" runat="server" Text='<%#Eval("PhoneNo") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txtPhoneNo" width="70px" BorderColor="Black" runat="server" Text='<%#Eval("PhoneNo") %>'/>
     </EditItemTemplate>
    
 </asp:TemplateField>

                          <asp:TemplateField HeaderText="Name">
      <ItemTemplate>
         <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txtName" width="70px"  runat="server" BorderColor="Black" Text='<%#Eval("Name") %>'/>
     </EditItemTemplate>
    
 </asp:TemplateField>



                        <asp:TemplateField>
    <EditItemTemplate>
        <asp:Button ID="ButtonUpdate" runat="server" CommandName="Update"  Text="Update"  />
        <asp:Button ID="ButtonCancel" runat="server" CommandName="Cancel"  Text="Cancel" />
    </EditItemTemplate>
    <ItemTemplate>
        <asp:Button ID="ButtonEdit" runat="server" CommandName="Edit"  Text="Edit"  />
        <asp:Button ID="ButtonDelete" runat="server" CommandName="Delete"  Text="Delete"  />
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
