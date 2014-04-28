<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="WebSite.Clients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Nuestros Clientes</h1>

    <style>
        table
        {
            width:100%;
        }
        td
        {
            width:25%;
            height:60px;
            text-align:center;
        }
    </style>
    
    <table>
    <tr>
        <td>
            <img src="App_Themes/Images/Clients/semana.gif" />
        </td>
        <td>
            <img src="App_Themes/Images/Clients/soho.gif" />
        </td>
        <td>
            <img src="App_Themes/Images/Clients/planb.gif" />
        </td>
        <td>
            <img src="App_Themes/Images/Clients/jetset.gif" />
        </td>
    </tr>
     <tr>
        <td>
            <img src="App_Themes/Images/Clients/fucsia.gif" />
        </td>
        <td>
            <img src="App_Themes/Images/Clients/finanzas.gif" />
        </td>
        <td>
            <img src="App_Themes/Images/Clients/dinero.gif" />
        </td>
        <td>
            <img src="App_Themes/Images/Clients/blog.gif" />
        </td>
    </tr>
     <tr>
        <td>
            <img src="App_Themes/Images/Clients/arcadia.gif" />
        </td>
        <td>
            <img src="App_Themes/Images/Clients/finca%20raiz.jpg" />
        </td>
        <td>
            <img src="App_Themes/Images/Clients/Aranda2.png" />
        </td>
        <td>
            
        </td>
    </tr>
    </table>

</asp:Content>

