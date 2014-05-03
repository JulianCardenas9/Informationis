<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Roles.aspx.cs" Inherits="WebSite.Admin.Roles" %>
<%@ Register TagPrefix="uc" TagName="RolList" Src="~/Controls/Rol/RolList.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../App_Themes/Css/Rol.css" rel="stylesheet" type="text/css" />
    

</asp:Content>  
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc:RolList ID="RolList1" runat="server" />
</asp:Content>