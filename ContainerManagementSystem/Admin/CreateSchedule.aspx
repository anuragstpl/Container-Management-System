<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/AdminM.Master" CodeBehind="CreateSchedule.aspx.cs" Inherits="ContainerManagementSystem.Admin.CreateSchedule" %>



<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset>
        <legend>Create Schedule</legend>

        <ol>
            <li>
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Maroon"></asp:Label></li>
            <li>
                <asp:Label ID="Label1" runat="server">Package Type</asp:Label><br />
                <asp:DropDownList runat="server" ID="packagetypedrop" BorderColor="Black">
                    <asp:ListItem>Speed Post</asp:ListItem>
                    <asp:ListItem>Normal</asp:ListItem>
                </asp:DropDownList>

            </li>
            <li>
                <asp:Label ID="Label2" runat="server">No of Days</asp:Label><br />
                <asp:TextBox runat="server" ID="txtNoOfDays" BorderColor="Black" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNoOfDays"
                    CssClass="field-validation-error" ErrorMessage="The price field is required." />
            </li>
            <li>

                <asp:Button ID="Button1" runat="server" Text="Add Schedule" OnClick="Button1_Click" />

            </li>

        </ol>

    </fieldset>
    <script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        function IsNumeric(e) {
            var keyCode = e.which ? e.which : e.keyCode
            var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
            //document.getElementById("error").style.display = ret ? "none" : "inline";
            return ret;
        }
    </script>
</asp:Content>
