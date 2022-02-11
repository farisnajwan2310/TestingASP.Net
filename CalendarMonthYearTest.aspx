<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalendarMonthYearTest.aspx.cs" Inherits="student_Registration.CalendarMonthYearTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calendar Month/Year Test</title>


    <link href="https://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/css/datepicker.min.css" rel="stylesheet"/>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://netdna.bootstrapcdn.com/bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/js/bootstrap-datepicker.min.js"></script>

    <style>
        .month-textbox{
            z-index:-1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div>
                <br/>
                <h5>Pick date here</h5>
                <asp:TextBox runat="server" placeholder="-Select Month-" AutoComplete="off" class="form-control month-textbox" OnTextChanged="datepicker_TextChanged" name="datepicker" ID="datepicker" ></asp:TextBox>
                <asp:Label ID="MonthLbl" runat="server" Text="The month :"></asp:Label>
                <asp:Button ID="ShowBtn" runat="server" OnClick="ShowBtn_Click" Text="Show month" />

                <script type="text/javascript">
                    $("#datepicker").datepicker({
                        format: "mm-yyyy",
                        startView: "months",
                        minViewMode: "months"
                    });
                </script>
                <script>

                    // tell the embed parent frame the height of the content
                    if (window.parent && window.parent.parent) {
                        window.parent.parent.postMessage(["resultsFrame", {
                            height: document.body.getBoundingClientRect().height,
                            slug: "avLpbsfw"
                        }], "*")
                    }

                    // always overwrite window.name, in case users try to set it manually
                    window.name = "result"

                </script>

            </div>
        </div>
        <div>

        </div>
    </form>
</body>
</html>
