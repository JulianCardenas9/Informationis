<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Registry.ascx.cs" Inherits="WebSite.Controls.Registry" %>
<link href="../App_Themes/Css/Registry.css" rel="stylesheet" type="text/css" />
<script>
    var rolId = <%=Rol %>;
</script>
<script src="/App_Themes/Js/Model/UserModel.js" type="text/javascript"></script>
<script src="/App_Themes/Js/View/RegistryView.js" type="text/javascript"></script>
<script src="/App_Themes/Js/Controller/RegistryController.js" type="text/javascript"></script>
<div class="data">
    <div class="row">
        <span>Rol:</span>
        <select>
            <asp:Repeater ID="rptRol" runat="server">
                <ItemTemplate>
                    <option value="<%# DataBinder.Eval(Container.DataItem, "Id") %>">
                        <%# DataBinder.Eval(Container.DataItem, "Name") %>
                    </option>
                </ItemTemplate>
            </asp:Repeater>
        </select>
    </div>
    <div class="row">
        <span>Documento:</span><input id="txtDocument" integer="true" maxlength="10" type="text" /><span
            id="lblDocumentEdit" style="display: none;"></span>
    </div>
    <div class="row">
        <span>Nombre:</span><input id="txtName" maxlength="50" type="text" />
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
