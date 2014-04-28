String.prototype.toObject = function () {
	var chain = '<string xmlns="http://tusplanes.com">';
	var last = this.lastIndexOf("</string>");
	var firts = this.indexOf(chain) + chain.length;
	var value = this.substring(firts,last);
    value = value.replaceAll('"\\/Date(','new Date(Date(').replaceAll(')\\/"','))');
    return eval('(' + value + ')');
};

String.prototype.replaceAll = function(palabra, palabraNueva) {

	if (this != undefined) {
		var textReplace = this.toString();
		while (textReplace.indexOf(palabra) != -1)
		textReplace = textReplace.replace(palabra, palabraNueva);
		return textReplace;
	}
	return this;
}

jQuery.support.cors = true;

var lstEvents ;
