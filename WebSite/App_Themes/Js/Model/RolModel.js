RolModel = AjaxModel.extend({
    service: "RolService.asmx",

    list: function (name, callback, ref) {
        this.method = "List";
        Util.AjaxSetup(this, callback, null, ref);
        $.ajax({
            data: '{"name":"' + name + '"}'
        });
    },

    "delete": function (document, callback) {
        this.method = "Delete";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"id":' + document + '}'
        });
    },

    get: function (document, callback) {
        this.method = "Get";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"id":' + document + '}'
        });
    },

    save: function (id, name, description, callback) {
        this.method = "Save";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"id":' + id + ', "name":"' + name + '","description":"' + description + '"}'
        });
    }
});