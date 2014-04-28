<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="WebSite.Admin.Company" %>
<%@ Register TagPrefix="uc" TagName="CompanyList" Src="~/Controls/Company/CompanyList.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../App_Themes/Css/Client.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc:CompanyList ID="CompanyList1" runat=server />   
</asp:Content>
