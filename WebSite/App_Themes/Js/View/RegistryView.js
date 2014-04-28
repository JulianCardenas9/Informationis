RegistryView = Backbone.View.extend({

    onSaveHandler: null,

    initialize: function () {
        this.addEvents();
    },

    addEvents: function () {
        $("#lnkCancel").click(jQuery.proxy(this.onClean, this));
        $("#lnkSave").click(jQuery.proxy(this.onSave, this));
        $("#ddlRol").change(jQuery.proxy(this.onChange, this));

    },

    onClean: function () {
        $("input").val("");
        $("#txtDocument").show();
        $("#lblDocumentEdit").html("").hide();
        $(".modal_content,.back_modal").fadeOut();
    },

    onSave: function () {
        if (this.onSaveHandler != null) {
            //datos basicos
            var rol = $(".modal_content select").val();
            var document = $("#txtDocument").val();
            var name = $("#txtName").val();
            var password = $("#txtUserPassword").val();

            if (this.validate(rol, document, name, password)) {
                this.onSaveHandler(rol, document, name, password);
            }
        }
    },

    validate: function (rol, document, name, phone, password, address, date, specialized) {
        if (document.length < 6) {
            alert("Por favor ingrese un documento valido");
            return false;
        }
        else if (name.length < 6) {
            alert("Por favor ingrese un nombre valido");
            return false;
        }

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
        $("#txtDocument").val(obj.Document);
        $("#txtName").val(obj.Name);
        $("#txtUserPassword").val(obj.Password);
    }
});