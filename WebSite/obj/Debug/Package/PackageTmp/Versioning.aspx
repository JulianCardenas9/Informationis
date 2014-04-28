<%@ Page Title="" Language="C#" MasterPageFile="~/Main-Private.Master" AutoEventWireup="true" CodeBehind="Versioning.aspx.cs" Inherits="WebSite.Versioning" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Versionamiento</h1>

    <div class="gallery">
        <div class="principal_image">
            <a href="https://github.com/JulianCardenas9/Informationis" target="_blank"><img src="/App_Themes/Images/git.jpg" /></a>
        </div>
    </div>

    <p>
        El repositorio de  Informationis Sistema está  en GitHub. <br />
        <a href="https://github.com/JulianCardenas9/Informationis">Ir al repositorio</a> o si prefieres una 
        <a href="github-windows://openRepo/https://github.com/JulianCardenas9/Informationis">descarga directa </a>
    </p>

    <p>
        Estos vinculos pueden ser de interes
        <ul>
            <li><a href="https://help.github.com/articles/set-up-git">Tutorial de instalación de Git</a></li>
            <li><a href="http://github-windows.s3.amazonaws.com/GitHubSetup.exe">GitHubSetup - Aplicación  para conectarse al repositorio y hacer los commit</a></li>
        </ul>
    </p>



</asp:Content>
