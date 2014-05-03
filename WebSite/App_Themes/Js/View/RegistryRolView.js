RegistryView = Backbone.View.extend({
    id: 0,

    onSaveHandler: null,

    initialize: function () {
        this.addEvents();
    },

    addEvents: function () {
        $("#lnkCancel").click(jQuery.proxy(this.onClean, this));
        $("#lnkSave").click(jQuery.proxy(this.onSave, this));
    },

    onClean: function () {
        this.id = 0;
        $("input").val("");
        $(".modal_content,.back_modal").fadeOut();
    },

    onSave: function () {
        if (this.onSaveHandler != null) {
            //datos basicos
            var name = $("#txtName").val();
            var description = $("#txtDescription").val();

            if (this.validate(name, description)) {
                this.onSaveHandler(this.id, name, description);
            }
        }
    },

    validate: function (name, description) {
        if (name.length < 3) {
            alert("Por favor ingrese un nombre valido");
            return false;
        }
        else if (description.length < 4) {
            alert("Por favor ingrese una descripcion valido");
            return false;
        }

        return true;
    },

    show: function () {
        this.id = 0;
        $(".modal_content,.back_modal").fadeIn();
    },

    hide: function () {
        $(".modal_content,.back_modal").fadeOut();
        $(".modal_content input").val("");
    },

    setData: function (obj) {
        this.id = obj.Id;
        $("#txtName").val(obj.Name);
        $("#txtDescription").val(obj.Description);
    }
});