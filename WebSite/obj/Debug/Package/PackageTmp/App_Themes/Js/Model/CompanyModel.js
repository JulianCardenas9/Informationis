CompanyModel = AjaxModel.extend({
    service: "CompanyService.asmx",

    list: function (name, callback, ref) {
        this.method = "List";
        Util.AjaxSetup(this, callback, null, ref);
        $.ajax({
            data: '{"name":"' + name + '"}'
        });
    },

    "delete": function (id, callback) {
        this.method = "Delete";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"id":"' + id + '"}'
        });
    },

    get: function (id, callback) {
        this.method = "Get";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"id":"' + id + '"}'
        });
    },

    getUsers: function (id, callback) {
        this.method = "GetUsers";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"id":"' + id + '"}'
        });
    },

    save: function (nit, name, document, username, password, callback) {
        this.method = "Save";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"nit":"' + nit + '", "name":"' + name + '","document":"' + document + '","username":"' + username + '","password":"' + password + '"}'
        });
    }
});