RegistryView = Backbone.View.extend({

    onSaveHandler: null,
    lstData: null,
    currentData: null,

    initialize: function () {
        this.addEvents();
        this.setUsers([]);
    },

    addEvents: function () {
        $("#lnkCancel").click(jQuery.proxy(this.onClean, this));
        $("#lnkSave").click(jQuery.proxy(this.onSave, this));
        $("#ddlRol").change(jQuery.proxy(this.onChange, this));
        $("#rptUsers").change(jQuery.proxy(this.onChangeUser, this));
    },

    onChangeUser: function () {
        var id = $("#rptUsers").val();
        var currentUser = _.find(this.lstData, function (obj) {
            return obj.Document == id;
        });

        if (currentUser.Document != 0) {
            $("#txtUserName").val(currentUser.Name);
            $("#txtUserDocument").val(currentUser.Document);
            $("#txtUserPassword").val(currentUser.Password);
        }
        else {
            $("#txtUserName").val("");
            $("#txtUserDocument").val("");
            $("#txtUserPassword").val("");
        }
    },

    onClean: function () {
        $("input").val("");
        $("#txtDocument").show();
        $("#lblDocumentEdit").html("").hide();
        $(".modal_content,.back_modal").fadeOut();
        this.setUsers([]);
    },

    onSave: function () {
        if (this.onSaveHandler != null) {
            //datos basicos
            var nit = $("#txtDocument").val();
            var name = $("#txtName").val();
            var document = $("#txtUserDocument").val();
            var username = $("#txtUserName").val();
            var password = $("#txtUserPassword").val();

            if (this.validate(nit, name, document, username, password)) {
                this.onSaveHandler(nit, name, document, username, password);
            }
        }
    },

    validate: function (nit, name, document, username, password) {
        /*  if (document.length < 6) {
        alert("Por favor ingrese un documento valido");
        return false;
        }
        else if (name.length < 6) {
        alert("Por favor ingrese un nombre valido");
        return false;
        }
        else if (phone.length < 6) {
        alert("Por favor ingrese un teléfono valido");
        return false;
        }

        //cliente
        else if (rol == 3) {
        if (address.length < 6) {
        alert("Por favor ingrese una dirección valida");
        return false;
        }
        else if (date.length < 6) {
        alert("Por favor seleccione la fecha de expedición del documento");
        return false;
        }
        }
        else if (rol == 2) {
        if (password.length < 6) {
        alert("Por favor ingrese una contraseña valida");
        return false;
        }
        else if (specialized.length < 6) {
        alert("Por favor ingrese la especialización del agente");
        return false;
        }
        }*/

        return true;
    },

    show: function () {
        $(".modal_content,.back_modal").fadeIn();
    },

    hide: function () {
        $(".modal_content,.back_modal").fadeOut();
        $(".modal_content input").val("");
    },

    setData: function (obj) {
        this.currentData = obj;
        $("#txtDocument").val(obj.Id);
        $("#txtName").val(obj.Name);
        $("#txtUserName").val(obj.UserName);
        $("#txtUserDocument").val(obj.ManagerId);
        $("#txtUserPassword").val(obj.UserPassword);

        if (this.currentData.ManagerId)
            $("#rptUsers").val(this.currentData.ManagerId)
    },

    setUsers: function (data) {
        this.lstData = data;

        for (var i = 0; i < data.length; i++) {
            data[i].Label = data[i].Name + ' (Documento: ' + data[i].Document + ')';
        }

        data.splice(0, 0, { Label: "::: Crear un administrador :::", Document: 0 });
        template.dataBind("rptUsers", data);

        if (this.currentData)
            $("#rptUsers").val(this.currentData.ManagerId)
    }
});