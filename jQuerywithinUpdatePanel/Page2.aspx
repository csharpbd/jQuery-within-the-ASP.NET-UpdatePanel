<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="jQuerywithinUpdatePanel.Page2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Page-2</title>

    <script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        //
        function IsValidNumber() {
            if ($(this).val() == "") {
                //$(this).val("0");
                alert("Please enter valid value!");
                $(this).focus();
            }
            else if ($.isNumeric($(this).val()) == false) {
                alert("Please enter valid value!");
                $(this).focus();
            }
        }

        function Add() {
            var Num1 = parseInt($('#txtNum1').val());
            var Num2 = parseInt($('#txtNum2').val());
            var Result = Num1 + Num2;
            $('#txtResult').val(Result);
        }

        function InIEvent() {
            $('#txtNum1').change(IsValidNumber);
            $('#txtNum2').change(IsValidNumber);
            $('#btnClientAdd').click(Add);
        }

        $(document).ready(InIEvent);
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="SM" runat="server">
    </asp:ScriptManager>

    <script type="text/javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(InIEvent);
    </script>

    <asp:UpdatePanel ID="upMain" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div>
                <table>
                    <tr>
                        <td>
                            <input type="button" id="btnClientAdd" value=" + " />
                        </td>
                        <td>
                            <asp:TextBox ID="txtNum1" runat="server" Width="100px"></asp:TextBox>
                            +
                            <asp:TextBox ID="txtNum2" runat="server" Width="100px"></asp:TextBox>
                            =
                            <asp:TextBox ID="txtResult" runat="server" Width="100px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnServerAdd" runat="server" Text=" +(*) " OnClick="btnServerAdd_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
