<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="WebSite.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--Titulo--%>
    <h1>
        Informationis Sistema</h1>
    <%--Galeria--%>
    <div class="gallery">
        <div class="principal_image" style="position:relative"> 
            <img src="/App_Themes/images/executive.jpg" />
            <%--Informacion--%>
            <div class="information" style="background: none repeat scroll 0 0 #000000;bottom: 0;color: #FFFFFF;opacity: 0.73;padding: 0 20px;position: absolute;text-align: left;" >
                <p>
                    Sistema de información que permita a la agrupación de comerciantes llevar un registro
                    de las empresas y personas que forman parte de la organización en cuestión. .</p>
            </div>
        </div>
    </div>
    
</asp:Content>
