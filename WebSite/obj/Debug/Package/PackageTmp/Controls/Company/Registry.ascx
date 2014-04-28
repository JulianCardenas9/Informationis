<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Registry.ascx.cs" Inherits="WebSite.Controls.Company.Registry" %>
<link href="../App_Themes/Css/Registry.css" rel="stylesheet" type="text/css" />

<script src="/App_Themes/Js/Model/CompanyModel.js" type="text/javascript"></script>
<script src="/App_Themes/Js/View/RegistryCompanyView.js" type="text/javascript"></script>
<script src="/App_Themes/Js/Controller/RegistryCompanyController.js" type="text/javascript"></script>
<div class="data">
    <div class="row">
        <span>Nit:</span><input id="txtDocument" integer="true" maxlength="20" type="text" /><span
            id="lblDocumentEdit" style="display: none;"></span>
    </div>
    <div class="row">
        <span>Nombre de la empresa:</span><input id="txtName" maxlength="50" type="text" />
    </div>
</div>

<h1>Administrador Principal</h1>

<div class="data">
    <div class="row">
        <span>Administrador:</span>

        <select id="rptUsers"></select>
        <script template="rptUsers" type="text/template">
            <option value="{Document}">{Label}</option>
        </script>
    </div>
    <div class="row">
        <span>Documento del Administrador:</span><input id="txtUserDocument" integer="true" maxlength="12" type="text" />
    </div>
    
    <div class="row">
        <span>Nombre del Administrador:</span><input id="txtUserName" maxlength="50" type="text" />
    </div>

    <div class="row">
        <span>Contraseña:</span><input id="txtUserPassword" maxlength="20" type="password" />
    </div>
</div>

<div class="data">
    <div class="row buttoms">
        <a id="lnkCancel" class="not_buttom">Cancelar</a> <a id="lnkSave" class="buttom">Guardar</a>
    </div>
</div>
