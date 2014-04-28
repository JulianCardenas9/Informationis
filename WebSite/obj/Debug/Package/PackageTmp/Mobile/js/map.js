var divId ='map';
var map;
var radius = 1.0166666666666667;
var markers = [];
var defaultLocation = new google.maps.LatLng(4.638172513576902, -74.08455321176302);
var dragMarker;

function addEventMarkers(lstEvents) {
	
	for(var i=0;i<lstEvents.length;i++)
	{
		addMarker(lstEvents[i]);
	}
}
 
function addCurrentPosition(lat,lon) {

	var dataLocation = new google.maps.LatLng(lat,lon);
	
	markers.push(new google.maps.Marker({
	  position: dataLocation,
	  map: map,
	  draggable: false,
	  icon:"http://android.posit-mobile.googlecode.com/hg/res/drawable/ic_maps_indicator_current_position.png",
	  animation: google.maps.Animation.DROP
	}));
}

function addDragMarker() {
	var centerPosition = map.getCenter();
	
	dragMarker =new google.maps.Marker({
	  position: centerPosition,
	  map: map,
	  draggable: true,
	  animation: google.maps.Animation.DROP,
	  icon:"http://cdn1.iconfinder.com/data/icons/Pretty_office_icon_part_2/32/add-event.png"
	});

	google.maps.event.addListener(dragMarker, 'dragend', function() { Event.OpenEventForm(); })
	
	markers.push(dragMarker);
	dragMarker.setMap(map);
}

function addMarker(data) {

	var dataLocation = new google.maps.LatLng(data.PlaceLat,data.PlaceLon);
	var marker =new google.maps.Marker({
	  position: dataLocation,
	  map: map,
	  draggable: false,
	  animation: google.maps.Animation.DROP//,
	  //icon:"http://www.veryicon.com/icon/32/Business/Pretty%20Office/Event.png"
	});
	
	markers.push(marker);
	
	var contentString = '<h1>'+data.EventName+'</h1><p>'+data.EventSummary+'</p>'
	var infowindow = new google.maps.InfoWindow({
		content: contentString
	});
	
	google.maps.event.addListener(marker, 'click', function() {
		infowindow.open(map,marker);
	});
}

function initialize() {
	var mapOptions = {
		zoom: 16,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	map = new google.maps.Map(document.getElementById(divId), mapOptions);

	if(navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(function(position) {
			var pos = new google.maps.LatLng(position.coords.latitude,
			position.coords.longitude);

		//	addCurrentPosition(pos.lat(),pos.lng());

			map.setCenter(pos);
		}, 
		function() {
			handleNoGeolocation(true);
		});
	} 
	else {
	  handleNoGeolocation(false);
	}
	
	//Event.List(defaultLocation.lat(), defaultLocation.lng(),radius);
}

function handleNoGeolocation(errorFlag) {
        
	var options = {
		map: map,
		position: defaultLocation
	};

	addCurrentPosition(defaultLocation.lat(),defaultLocation.lng());
	
	map.setCenter(options.position);
}

$(document).ready(initialize);
