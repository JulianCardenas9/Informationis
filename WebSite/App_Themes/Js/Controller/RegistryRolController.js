RegistryController = Backbone.Router.extend({
    view: null,
    model: null,
    onChangeHandler: null,

    initialize: function () {
        this.model = new RolModel();
        this.view = new RegistryView();
        this.view.onSaveHandler = jQuery.proxy(this.save, this);
    },

    save: function (id,name, description) {
        this.model.save(id,name, description, jQuery.proxy(this.saveCallback, this));
    },

    saveCallback: function (res) {
        this.view.hide();
        if (this.onChangeHandler != null)
            this.onChangeHandler();
    },

    setData: function (obj) {
        this.view.show();
        this.view.setData(obj);
    },

    getCallback: function (res) {

    },

    add: function () {
        this.view.show();
    }
});


var registryController;
$(document).ready(function () {
    registryController = new RegistryController();
});