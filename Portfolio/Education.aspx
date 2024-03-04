<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Education.aspx.cs" Inherits="Portfolio.Education" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
            color: #333;
            margin: 0;
            padding: 0;
        }

        #form1 {
            max-width: 400px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .gorgeous-textbox {
            width: calc(100% - 22px);
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
            color: #555;
            display: inline-block;
        }

        .gorgeous-label {
            font-size: 16px;
            color: #555;
            display: inline-block;
            margin-right: 10px;
            width: 100px;
            text-align: left;
        }

        #Update {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        #Update:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="DateLabel" runat="server" CssClass="gorgeous-label" Text="Date:"></asp:Label>
            <asp:TextBox ID="DateUpdate" runat="server" CssClass="gorgeous-textbox" placeholder="Gorgeous Date" name="DateTextbox"></asp:TextBox><br />

            <asp:Label ID="TitleLabel" runat="server" CssClass="gorgeous-label" Text="Title:"></asp:Label>
            <asp:TextBox ID="TitleUpdate" runat="server" CssClass="gorgeous-textbox" placeholder="Gorgeous Title" name="TitleTextbox"></asp:TextBox><br />

            <asp:Label ID="DescriptionLabel" runat="server" CssClass="gorgeous-label" Text="Description:"></asp:Label>
            <asp:TextBox ID="DescriptionUpdate" runat="server" CssClass="gorgeous-textbox" placeholder="Gorgeous Description" Rows="4" TextMode="MultiLine" name="DescriptionTextbox"></asp:TextBox><br />

            <asp:Button ID="Update" runat="server" Text="Update" onclick="update" CssClass="gorgeous-button" /><br />
        </div>
    </form>
</body>
</html>
