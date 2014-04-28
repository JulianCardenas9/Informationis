<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CompanyList.ascx.cs" Inherits="WebSite.Controls.Company.CompanyList" %>
<%@ Register TagPrefix="uc" TagName="Registry" Src="~/Controls/Company/Registry.ascx" %>

<div class="back_modal"></div>
<div class="modal_content">
    <h1>Información de la compañia</h1>
    <uc:Registry ID="Registry1" Rol="2" runat=server />
</div>


<script src="../../App_Themes/Js/Model/CompanyModel.js" type="text/javascript"></script>
<script src="../../App_Themes/Js/View/CompanyView.js" type="text/javascript"></script>
<script src="../../App_Themes/Js/Controller/CompanyController.js" type="text/javascript"></script>

<div class="title_box">Compañias

<a id="btnAdd" class="buttom">+ Nuevo</a>
</div>

<div class="toolbar">
    Buscar una compañia: <input id="txtFind" search="true" type="text"/>
</div>

<div id="rptAgent"></div>
<script template="rptAgent" type="text/template">
    <div class="box">
        <img class="icon" src="../App_Themes/Images/company.png" width="50px" />
        <div class="info">
        
            <div class="Name title">{Name}</div>
            <span>Fecha de creación: <a> {CreationDate}</a></span>
            <span>Administrador: <a> {UserName}</a></span>
            <span>Creada por: <a> {CreationUserName}</a></span>
            <span>Tipo: <a> {LevelName}</a></span>
        
            <a class="delete" title="Eliminar" value="{Id}">
                <img alt="Eliminar" src="../../App_Themes/Images/Icon/delete.png" />
            </a>
            <a class="edit" title="Editar" value="{Id}">
                <img src="../../App_Themes/Images/Icon/edit.png" />
            </a>
        </div>
    </div>
</script>
<script empty="rptAgent" type="text/template">
    <p class="center">No se encontraron compañias</p>
</script>
