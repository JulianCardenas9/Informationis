<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true"
    CodeBehind="Manage.aspx.cs" Inherits="WebSite.Admin.Manage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../App_Themes/Css/Manage.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <script>
        $(".manage").addClass("select");
    </script>

    <div class="title_box">
        Administrar Informationis Sistema</div>
    <div class="box">
        <img class="icon" src="../App_Themes/Images/Backup.png" width="50px" />
        <div class="info">
            <div class="Name title">
                Copia de respaldo</div>
            <span>Generar backup de la base de datos</span>
        </div>
    </div>

    <div class="box">
        <img class="icon" src="../App_Themes/Images/Restore.png" width="50px" />
        <div class="info">
            <div class="Name title">
                Restaurar Sistema</div>
            <span>Restaurar base de datos a un punto anterior</span>
        </div>
    </div>
</asp:Content>
