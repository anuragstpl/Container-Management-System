<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ContainerManagementSystem._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div align="center">
                                                                <fieldset style="width: 800px;">
                                                                    <legend>Login</legend>
                                                                    <div class='container'>
                                                                        <asp:Label ID="Name" runat="server" Text="UserName:" CssClass="lbl" />
                                                                        <br />
                                                                        <asp:TextBox ID="txtUserName" runat="server" Width="300px" Height="30px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RV1" runat="server"
                                                                            ControlToValidate="txtUserName"
                                                                            ErrorMessage="Please Enter User Name"
                                                                            SetFocusOnError="True">*
                                                                        </asp:RequiredFieldValidator><br />
                                                                    </div>

                                                                    <div class='container'>
                                                                        <asp:Label ID="lblPwd" runat="server" Text="Password:" CssClass="lbl" />
                                                                        <br />
                                                                        <asp:TextBox ID="txtPwd" TextMode="Password" runat="server" Width="300px" Height="30px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RV2" runat="server"
                                                                            ControlToValidate="txtPwd"
                                                                            ErrorMessage="Your Password"
                                                                            SetFocusOnError="True">*
                                                                        </asp:RequiredFieldValidator><br />
                                                                    </div>

                                                                    <div class='container'>
                                                                        <br />

                                                                        <asp:Button ID="btnLogIn" runat="server" Text="Sign In" BackColor="SkyBlue" Width="200px" Height="30px"
                                                                            OnClick="btnLogIn_Click" />
                                                                    </div>

                                                                    <div class='container'>
                                                                        <br />
                                                                    </div>
                                                                    <div class='short_explanation'></div>
                                                                    <asp:ValidationSummary ID="ValidationSummary1"
                                                                        runat="server" CssClass="error" />
                                                                    <br />
                                                                    <br />
                                                                    <asp:Label ID="lblMsg" runat="server" Text="" CssClass="lbl" />
                                                                </fieldset>
                                                            </div>
</asp:Content>
