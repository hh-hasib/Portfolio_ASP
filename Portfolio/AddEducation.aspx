<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEducation.aspx.cs" Inherits="Portfolio.AddEducation" %>

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
            width: 400px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
        }

        button {
            background-color: #007bff;
            color: #fff;
            padding: 12px 20px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label for="DateAdd">Date:</label>
            <asp:TextBox ID="DateAdd" runat="server" ClientIDMode="Static"></asp:TextBox>

            <label for="TitleAdd">Title:</label>
            <asp:TextBox ID="TitleAdd" runat="server" ClientIDMode="Static"></asp:TextBox>

            <label for="DescriptionAdd">Description:</label>
            <asp:TextBox ID="DescriptionAdd" runat="server" ClientIDMode="Static" TextMode="MultiLine" Rows="4"></asp:TextBox>

            <asp:Button ID="Add" runat="server" Text="Add" OnClick="add" />
        </div>
    </form>
</body>
</html>
