<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PrivateHeader.ascx.cs" Inherits="WebSite.Controls.PrivateHeader" %>

<%@ Register TagPrefix="uc" TagName="Login" Src="~/Controls/Login.ascx" %>

<link href="../App_Themes/Css/Login.css" rel="stylesheet" type="text/css" />

<%--Header--%>
<div class="header private">
    <%--Crear--%>
    
    <div class="project create">
        <a href="/Admin/Index.aspx" class="logo"> 
            <asp:Literal ID="ltCompany" Visible="false" runat="server"></asp:Literal> - Informationis Sistema
        </a>
        
        <asp:LinkButton ID="lnkClose" Text="Salir" runat="server" class="close" 
            OnClick="lnkClose_Click"></asp:LinkButton>

        <a class="name">
            <asp:Literal ID="ltName" Visible="false" runat="server"></asp:Literal>
            
            (<asp:Literal ID="ltRol" Visible="false" runat="server"></asp:Literal>)
        </a>
        
    </div>

    <div class="menu">

        <a id="lblManage" class="manage" runat="server" href="/admin/manage.aspx"> 
            <img align="middle" src="../App_Themes/Images/Configure.png" />Administrar</a>

        <a id="lblHome" class="home" runat="server"  href="/admin/index.aspx"> 
            <img align="middle" src="../App_Themes/Images/Icon/home.png" />Inicio</a>
        <a id="lblCompany" class="company" href="/admin/company.aspx" runat="server"> 
            <img align="middle" src="../App_Themes/Images/company.png" />Compañias</a>
        <a id="lblUser" class="user" href="/admin/Agent.aspx" runat="server"> 
            <img align="middle" src="../App_Themes/Images/Icon/client.png" />Usuarios</a>
        <a id="lblRoles" class="roles" href="/admin/Roles.aspx" runat="server"> 
            <img align="middle" src="../App_Themes/Images/rol.png" />Roles</a>
    </div>

    <asp:Panel ID="pnlLogin" Visible="false" runat="server">
        <div class="create" style="float:right">
            <a id="lnkLogin" class="logo">Login</a>
        </div>
    </asp:Panel>
    
</div>

<uc:Login ID="login" runat=server /> 