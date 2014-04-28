﻿CompanyController = Backbone.Router.extend({
    view: null,
    model: null,
    registry: null,

    initialize: function () {
        this.model = new CompanyModel();
        this.view = new CompanyView();

        if (typeof (registryController)!="undefined")
        {
            this.registry = registryController;
            this.registry.onChangeHandler = jQuery.proxy(this.list, this);
        }

        this.view.onFindHandler = jQuery.proxy(this.list, this);
        this.view.onEditHandler = jQuery.proxy(this.edit, this);
        this.view.onDeleteHandler = jQuery.proxy(this["delete"], this);
        this.view.onAddHandler = jQuery.proxy(this.add, this);

        this.list();
    },

    add: function(){
        this.registry.add();
    },

    edit: function(id){
        this.model.get(id, jQuery.proxy(this.getCallback, this));
        this.model.getUsers(id, jQuery.proxy(this.getUsersCallback, this));
    },

    getUsersCallback: function (res) {
        this.registry.setUsers(res);
    },

    getCallback: function (res) {
        this.registry.setData(res);
    },

    "delete": function(id){
        this.model["delete"](id, jQuery.proxy(this.deleteCallback, this));
    },

    deleteCallback: function(res){
        if(res != 0){
            var name = this.view.getFilter();
            this.list(name);
        }
        else{
            alert("No es posible eliminar la empresa");
        }
    },

    list: function (name) {
        
        if (name == undefined)
            name = "";

        this.model.list(name,jQuery.proxy(this.listCallback, this), name);
    },

    listCallback: function (data, ref) {
        this.view.render(data, ref);
    }
});


var companyController;
$(document).ready(function () {
    companyController = new CompanyController();
});