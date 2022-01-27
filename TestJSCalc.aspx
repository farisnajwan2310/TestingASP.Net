<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestJSCalc.aspx.cs" Inherits="student_Registration.TestJSCalc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <p>Input1</p>
        <asp:TextBox ID="Input1" ClientIDMode="Static" runat="server"></asp:TextBox>
        <br />
        <p>Input2</p>
        <asp:TextBox ID="Input2" ClientIDMode="Static" runat="server"></asp:TextBox>

        <br />
        <p>Total</p>
        <asp:TextBox ID="Total" ClientIDMode="Static" runat="server"></asp:TextBox>


    </div>

    <script language="javascript" type="text/javascript">
        function GetTotal()
        {

            var i1 = parseFloat($('#Input1').val());
            var i2 = parseFloat($('#Input2').val());
            var Totalv = i1 + i2;

            $('#Total').val(Totalv);
        }
    </script>
</asp:Content>
