<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Labb_1_2_Kassakvitto.WebForm1" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Labb 2</title>
        <link href="Content/styles.css" rel="stylesheet" />
    </head>
    <body>
        <h1>
            DIN SPIK 
        </h1>
        <h2>
            Spikraka spik!
        </h2>
        <form id="form1" runat="server">
            <div>
                <p>Ange total köpesumma:</p>
                <asp:Panel ID="Panel1" runat="server" DefaultButton="CalculateButton">
                    <asp:TextBox ID="TotalAmount" runat="server" ></asp:TextBox>
                    <span> kr</span>
                    <br />

                    <%--Knapp för att beräkna rabatt och betalning --%>
                    <asp:Button ID="CalculateButton" runat="server" Text="Beräkna rabatt!" OnClick="CalculateButton_Click" />

                    <%-- Validatorer --%>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Talet måste var större än noll." ControlToValidate="TotalAmount" Operator="GreaterThan" Type="Integer" ValueToCompare="0" Display="Dynamic" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fältet får inte vara tomt." ControlToValidate="TotalAmount" Display="Dynamic" />
                    
                    <%-- Panel för kvittoutskrift --%>
                    <asp:Panel ID="Panel2" runat="server" visible="false">
                        <h3> Kvitto</h3>
                        <br />
                        <span> Din spik AB</span>
                        <br />
                        <span>     - Spikraka spik!</span>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Totalt: " />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Rabattsats: " />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Rabatt: " />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Att betala: " />
                        <br />
                        <br />
                        <span>Välkommen åter till</span> 
                        <br />
                        <span>DIN SPIK!</span>
                        <br />
                        <br />
                        <br />
                    </asp:Panel>
                </asp:Panel>
            </div>
        </form>
        
        <%-- Script för att skapa fokus samt att markera text i inmatningsfältet. --%>
        <script type="text/javascript">
            document.getElementById("TotalAmount").focus();
            document.getElementById("TotalAmount").select();
        </script>
    </body>
</html>