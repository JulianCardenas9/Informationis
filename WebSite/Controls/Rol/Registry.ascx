<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Registry.ascx.cs" Inherits="WebSite.Controls.Rol.Registry" %>
<link href="../App_Themes/Css/Registry.css" rel="stylesheet" type="text/css" />

<script src="/App_Themes/Js/Model/RolModel.js" type="text/javascript"></script>
<script src="/App_Themes/Js/View/RegistryRolView.js" type="text/javascript"></script>
<script src="/App_Themes/Js/Controller/RegistryRolController.js" type="text/javascript"></script>
<div class="data">
    <div class="row">
        <span>Nombre:</span><input id="txtName" maxlength="50" type="text" />
    </div>
    <div class="row">
        <span>Descripcion:</span><input id="txtDescription" maxlength="20" type="text" />
    </div>
</div>
<div class="data">
    <div class="row buttoms">
        <a id="lnkCancel" class="not_buttom">Cancelar</a> <a id="lnkSave" class="buttom">Guardar</a>
    </div>
</div>
