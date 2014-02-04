<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Labb_1_2_Kassakvitto.WebForm1" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Labb 2</title>
    </head>
    <body>
        <h1>
            Kvitto-labben! Woho!
        </h1>
        <form id="form1" runat="server">
            <div>
                <p>Ange total köpesumma:</p>
                <asp:Panel ID="Panel1" runat="server" DefaultButton="CalculateButton">
                    <asp:TextBox ID="TotalAmount" runat="server" Text="Hej"></asp:TextBox>
                    <span> kr</span>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Talet måste var större än noll." ControlToValidate="TotalAmount" Operator="GreaterThan" Type="Integer" ValueToCompare="0" Display="Dynamic" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fältet får inte vara tomt." ControlToValidate="TotalAmount" Display="Dynamic" />
                    <asp:Label ID="Message" runat="server" Text="Label" ViewStateMode="Inherit" />
                    <asp:Button ID="CalculateButton" runat="server" Text="Beräkna rabatt!" />
                </asp:Panel>
            </div>
        </form>
        <script type="text/javascript">
            document.getElementById("TotalAmount").focus();
            document.getElementById("TotalAmount").select();
        </script>
    </body>
</html>