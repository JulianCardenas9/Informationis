RegistryController = Backbone.Router.extend({
    view: null,
    model: null,
    onChangeHandler: null,

    initialize: function () {
        this.model = new CompanyModel();
        this.view = new RegistryView();
        this.view.onSaveHandler = jQuery.proxy(this.save, this);
    },

    save: function (nit, name, document, username, password) {
        this.model.save(nit, name, document, username, password, jQuery.proxy(this.saveCallback, this));
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

    setUsers: function (obj) {
        this.view.setUsers(obj);
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