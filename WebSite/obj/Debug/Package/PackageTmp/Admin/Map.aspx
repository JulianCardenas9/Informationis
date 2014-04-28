<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="WebSite.Admin.Map" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../App_Themes/Css/Admin.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=true"></script>
		<script type="text/javascript" src="/mobile/js/event.js"></script>
		<script type="text/javascript" src="/mobile/js/map.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="map" ></div>

<script>
    $(document).ready(function () {
        navigator.geolocation.getCurrentPosition(function (position) {
            addMarker({ EventName: "<%= agent.Name%>", EventSummary: "Telefono: <%=agent.Phone%>", PlaceLat: position.coords.latitude, PlaceLon: position.coords.longitude });
        });

    });
    
</script>
</asp:Content>
