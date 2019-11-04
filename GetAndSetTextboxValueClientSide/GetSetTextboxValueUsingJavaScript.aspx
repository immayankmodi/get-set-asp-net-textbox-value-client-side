<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetSetTextboxValueUsingJavaScript.aspx.cs"
    Inherits="GetAndSetTextboxValueClientSide.GetSetTextboxValueUsingJavaScript" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>AspnetO.com | Get and Set asp.net textbox value using javascript</title>

    <script type="text/javascript">
        function SetMe() {
            var changeValue = document.getElementById("txtChangeValue").value;
            document.getElementById("txtGetSetText").value = changeValue;
            return false;
        }

        function GetMe() {
            var currValue = document.getElementById("txtGetSetText").value;
            alert("Typed text is: " + currValue);
            return false;
        }

        function ResetMe() {
            document.getElementById("txtChangeValue").value = "www.aspneto.com";
            document.getElementById("txtGetSetText").value = "www.aspneto.com";
            return false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="4">Type some words and click "Set Me!" button to set the typed value to below textbox
                    </td>
                </tr>
                <tr>
                    <td>Change Textbox Value
                    </td>
                    <td>:
                    </td>
                    <td>
                        <asp:TextBox ID="txtChangeValue" runat="server" placeholder="Type some words" ClientIDMode="Static">
                        </asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnSetMe" runat="server" Text="Set Me!" OnClientClick="SetMe();" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="4">Click "Get Me!" button to get textbox value
                    </td>
                </tr>
                <tr>
                    <td>Current Textbox Value
                    </td>
                    <td>:
                    </td>
                    <td>
                        <asp:TextBox ID="txtGetSetText" runat="server" Text="AspnetO" ClientIDMode="Static">
                        </asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnGetMe" runat="server" Text="Get Me!" OnClientClick="GetMe();" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;
                    </td>
                    <td colspan="2">
                        <asp:Button ID="btnResetMe" runat="server" Text="Reset Me!" OnClientClick="ResetMe();" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
