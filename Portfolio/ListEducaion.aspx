<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListEducaion.aspx.cs" Inherits="Portfolio.ListEducaion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        form {
            width: 80%;
            margin-top: 20px;
        }

        .table-styled {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .table-styled th, .table-styled td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        .cell-styled {
            font-weight: bold;
        }

        .button-container {
            margin-top: 20px;
        }

        .button-container .btn {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            margin-right: 10px;
        }

        .button-container .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Table ID="dynamicTable" runat="server" CssClass="table-styled">
            <asp:TableHeaderRow runat="server">
                <asp:TableHeaderCell CssClass="cell-styled">Date</asp:TableHeaderCell>
                <asp:TableHeaderCell CssClass="cell-styled">Title</asp:TableHeaderCell>
                <asp:TableHeaderCell CssClass="cell-styled">Description</asp:TableHeaderCell>
                <asp:TableHeaderCell CssClass="cell-styled">Operation</asp:TableHeaderCell>
            </asp:TableHeaderRow>
        </asp:Table>

        <div class="button-container">
            <asp:Button ID="Button1" runat="server" Text="Portfolio" CssClass="btn" onclick="submit" />
            <asp:Button ID="Button2" runat="server" Text="Add Education" CssClass="btn" onclick="add" />
        </div>

        <asp:Label ID="SuccessLabel" runat="server" ForeColor="Green" Visible="false"></asp:Label>
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>

    </form>
</body>
</html>
