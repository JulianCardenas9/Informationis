<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="WebSite.Controls.Header" %>
<%@ Register TagPrefix="uc" TagName="Login" Src="~/Controls/Login.ascx" %>
<link href="../App_Themes/Css/Login.css" rel="stylesheet" type="text/css" />
<%--Header--%>
<div class="header private">
    <%--Crear--%>
    <div class="project create">
        <a href="/Home.aspx" class="logo">Informationis Sistema</a> <a class="name">
            <asp:Literal ID="ltName" Visible="false" runat="server"></asp:Literal></a>
    </div>
    <div class="menu" style="width: 869px">
        <a class="home public" href="/home.aspx">
            <img align="middle" src="../App_Themes/Images/Icon/home.png" />Inicio</a> <a class="design public"
                href="/company.aspx">
                <img align="middle" src="../App_Themes/Images/Icon/diseno.png" />Empresa</a>
        <%--<a class="method public" href="/Documents.aspx"> 
            <img align="middle" src="../App_Themes/Images/Icon/metodologia.png" />Documentos</a>--%>
        <%--<a class="tech public" href="/Planning.aspx">
            <img align="middle" src="../App_Themes/Images/Icon/tecnologias.png" />Planeación</a>
        <a class="version public" href="/Documents.aspx">
            <img align="middle" src="../App_Themes/Images/Icon/repositorio.png" />Documentos</a>--%>
            <%--<a class="pattern public" href="/Commercial.aspx"> 
            <img align="middle" src="../App_Themes/Images/Icon/Devices.png" />Presentación Comercial</a>--%>
       <a class="tech public" href="/Clients.aspx"> 
            <img align="middle" src="../App_Themes/Images/Icon/tecnologias.png" />Nuestros Clientes</a>
        
        
        
    </div>
    <div>
        <asp:Panel ID="pnlLogin" runat="server">
            <div class="create" style="float: right">
                <a id="lnkLogin" class="logo">Login</a>
            </div>
        </asp:Panel>
    </div>
</div>
<uc:Login ID="login" runat="server"  />
