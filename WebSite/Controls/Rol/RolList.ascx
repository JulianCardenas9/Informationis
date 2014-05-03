<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RolList.ascx.cs" Inherits="WebSite.Controls.Rol.RolList" %>
<%@ Register TagPrefix="uc" TagName="Registry" Src="~/Controls/Rol/Registry.ascx" %>

<div class="back_modal"></div>
<div class="modal_content">
    <h1>Informacion del Rol</h1>
    <uc:Registry ID="Registry1" Rol="3" runat=server />
</div>


    <script src="../App_Themes/Js/View/RolView.js" type="text/javascript"></script>
    <script src="../App_Themes/Js/Model/RolModel.js" type="text/javascript"></script>
    <script src="../App_Themes/Js/Controller/RolController.js" type="text/javascript"></script>

<div class="title_box">Roles

<a id="btnAdd" class="buttom">+ Nuevo</a>
</div>

<div class="toolbar">
    Buscar un rol: <input id="txtFind" search="true" type="text"/>
</div>

<div id="rptRol"></div>
<script template="rptRol" type="text/template">
    <div class="box">
        <div class="info">
            <div class="Name title">{Name}</div>
            <span>Descripcion:<a>{Description}</a></span>
            <a class="delete" title="Eliminar" value="{Id}">
                <img alt="Eliminar" src="../../App_Themes/Images/Icon/delete.png" />
            </a>
            <a class="edit" title="Editar" value="{Id}">
                <img src="../../App_Themes/Images/Icon/edit.png" />
            </a>
        </div>
    </div>
</script>
<script empty="rptRol" type="text/template">
    <p class="center">No se encontraron roles</p>
</script>

