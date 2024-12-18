﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="random_dog_image_viewer._default" async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Random Dog Image Viewer</title>

    <!-- BOOTSTRAP -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <!-- CUSTOM CSS -->
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
    <!-- ASP.NET FORM -->
    <form id="form1" runat="server">
        <div class="container mt-4 d-flex flex-column align-items-center justify-content-center gap-4">
            <h1>Random Dog Image Generator</h1>

            <!-- ASP.NET IMAGE CONTROL -->
            <asp:Image 
                runat="server" 
                ID="imgDog"
                Style="max-width: 600px; width: 100%; max-height: 375px; object-fit: contain;"
                ImageUrl="~/Assets/placeholder.jpg" 
                AlternateText="placeholder" 
                />

            <!-- ASP.NET BUTTON CONTROL -->
            <asp:Button ID="btnLoad" runat="server" CssClass="border-0 p-2 bg-primary text-white rounded-2" Text="Random Dog Image" OnClick="btnLoad_Click" />
        </div>

        <!-- ASP.NET ERROR LABEL CONTROL -->
        <asp:Label ID="lblResult" runat="server"></asp:Label>
    </form>

    <!-- BOOTSTRAP JAVASCRIPT -->
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.7.0.min.js"></script>
    <script src="Scripts/jquery-3.7.0.intellisense.js"></script>
    <script src="Scripts/modernizr-2.8.3.js"></script>
</body>
</html>
