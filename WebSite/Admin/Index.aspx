<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true"
    CodeBehind="Index.aspx.cs" Inherits="WebSite.Admin.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <script>$(".home").addClass("select")</script>
        
        <link rel="stylesheet" type="text/css" href="http://jslate.com/css/W.jquery-ui.css+codemirror-3.14,,_codemirror.css+codemirror-3.14,,_ambiance.css+codemirror-3.14,,_hint,,_show-hint.css+style.css,Mcc.aj2uUDAqsX.css.pagespeed.cf.DnFeWgKGQh.css" />
       
        
        <script type="text/javascript" src="http://jslate.com/js/highstock.js.pagespeed.jm.rbsRlfSXMS.js"></script>
        
        <script type="text/javascript" src="http://jslate.com/js/d3/d3.js.pagespeed.jm.LSH4iZ4XuA.js"></script>
        <script type="text/javascript">//<![CDATA[
            (function () {
                d3.csv = function (url, callback) { d3.text(url, "text/csv", function (text) { callback(text && d3.csv.parse(text)); }); }; d3.csv.parse = function (text) { var header; return d3.csv.parseRows(text, function (row, i) { if (i) { var o = {}, j = -1, m = header.length; while (++j < m) o[header[j]] = row[j]; return o; } else { header = row; return null; } }); }; d3.csv.parseRows = function (text, f) {
                    var EOL = {}, EOF = {}, rows = [], re = /\r\n|[,\r\n]/g, n = 0, t, eol; re.lastIndex = 0; function token() {
                        if (re.lastIndex >= text.length) return EOF; if (eol) { eol = false; return EOL; }
                        var j = re.lastIndex; if (text.charCodeAt(j) === 34) {
                            var i = j; while (i++ < text.length) { if (text.charCodeAt(i) === 34) { if (text.charCodeAt(i + 1) !== 34) break; i++; } }
                            re.lastIndex = i + 2; var c = text.charCodeAt(i + 1); if (c === 13) { eol = true; if (text.charCodeAt(i + 2) === 10) re.lastIndex++; } else if (c === 10) { eol = true; }
                            return text.substring(j + 1, i).replace(/""/g, "\"");
                        }
                        var m = re.exec(text); if (m) { eol = m[0].charCodeAt(0) !== 44; return text.substring(j, m.index); }
                        re.lastIndex = text.length; return text.substring(j);
                    }
                    while ((t = token()) !== EOF) {
                        var a = []; while ((t !== EOL) && (t !== EOF)) { a.push(t); t = token(); }
                        if (f && !(a = f(a, n++))) continue; rows.push(a);
                    }
                    return rows;
                }; d3.csv.format = function (rows) { return rows.map(d3_csv_formatRow).join("\n"); }; function d3_csv_formatRow(row) { return row.map(d3_csv_formatValue).join(","); }
                function d3_csv_formatValue(text) { return /[",\n]/.test(text) ? "\"" + text.replace(/\"/g, "\"\"") + "\"" : text; }
            })();
//]]></script>
        <script type="text/javascript" src="http://jslate.com/js/d3/d3.chart.js.pagespeed.jm.RlLqBDO6W2.js"></script>
        <script type="text/javascript" src="http://jslate.com/js/d3/d3.geo.js.pagespeed.jm.YlnD-aFihX.js"></script>
        <script type="text/javascript" src="http://jslate.com/js/d3/d3.geom.js.pagespeed.jm.BbhwHg-ir0.js"></script>
        <script type="text/javascript" src="http://jslate.com/js/d3/d3.layout.js.pagespeed.jm.D5FJ0Jj5bo.js"></script>
        <script type="text/javascript" src="http://jslate.com/js/d3/d3.time.js.pagespeed.jm.04NZ23P8BI.js"></script>
        <script type="text/javascript"></script>
        <script type="text/javascript">            $(document).ready(function () { $('.flashMessage').fadeIn(500).delay(5000).fadeOut(1000); }); function proxy(url) { return "/" + 'proxy.php?url=' + encodeURIComponent(url); }</script>
        <script type="text/javascript">            var _gaq = _gaq || []; _gaq.push(['_setAccount', 'UA-28317188-1']); _gaq.push(['_setDomainName', 'jslate.com']); _gaq.push(['_trackPageview']); function ga_heartbeat() { _gaq.push(['_trackEvent', 'Heartbeat', 'Heartbeat', '', 0, true]); setTimeout(ga_heartbeat, 60 * 1000); }
            ga_heartbeat(); (function () { var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true; ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s); })();</script>
   
        <div class="container" id="content">
           <div class='well dragbox' id='dragbox_15205' style='z-index: 2;
    left: 675px; top: 52px; width: 310px; height: 300px;'>

    <div class='dragbox-content' id='view15205' style='clear: both; width: 310px; height: 292px;'>
        <div id="id_535215f69ad9f" style="width: 100%; height: 100%;">
        </div>
        <script type="text/javascript">            $(function () {
                var viewid = "id_535215f69ad9f"; var seriesOptions = [], seriesCounter = 0, names = ['MSFT', 'AAPL', 'GOOG']; $.each(names, function (i, name) { $.getJSON('http://www.highcharts.com/samples/data/jsonp.php?filename=' + name.toLowerCase() + '-c.json&callback=?', function (data) { seriesOptions[i] = { name: name, data: data }; seriesCounter++; if (seriesCounter == names.length) { createChart(); } }); }); function createChart() {
                    chart = new Highcharts.StockChart({ chart: { renderTo: viewid }, title: {
                        text: 'Historico de Ventas'
                    },
                     rangeSelector: {
                        enabled: false
                    }, yAxis: { labels: { formatter: function () { return (this.value > 0 ? '+' : '') + this.value + '%'; } }, plotLines: [{ value: 0, width: 2, color: 'silver'}] }, plotOptions: { series: { compare: 'percent'} }, tooltip: { pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b> ({point.change}%)<br/>', yDecimals: 2 }, series: seriesOptions
                    });
                } 
            });</script>
    </div>
            </div>
            <div class='well dragbox' id='dragbox_15206' style='z-index: 3;
    left: 340px; top: 52px; width: 310px; height: 300px;'>
    
    <div class='dragbox-content' id='view15206' style='clear: both; width: 310px; height: 292px;'>
        <style>
            .clock
            {
                text-align: center;
            }
            .clock ul
            {
                list-style: none;
            }
            .clock ul li
            {
                padding: 0px;
                margin: 0px;
                display: inline;
                font-size: 24px;
            }
        </style>
        <div id="id_535215f69af58" class="clock">
            <div class="date">
            </div>
            <ul>
                <li class="hours"></li>
                <li class="point">:</li>
                <li class="min"></li>
                <li class="point">:</li>
                <li class="sec"></li>
            </ul>
        </div>
        <script type="text/javascript">            $(document).ready(function () {
                var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]; var dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
                var newDate = new Date(); newDate.setDate(newDate.getDate()); $('#id_535215f69af58 .date').html(dayNames[newDate.getDay()] + " " + newDate.getDate() + ' ' + monthNames[newDate.getMonth()] + ' ' + newDate.getFullYear()); setInterval(function () { var seconds = new Date().getSeconds(); $("#id_535215f69af58 .sec").html((seconds < 10 ? "0" : "") + seconds); }, 1000); setInterval(function () { var minutes = new Date().getMinutes(); $("#id_535215f69af58 .min").html((minutes < 10 ? "0" : "") + minutes); }, 1000); setInterval(function () { var hours = new Date().getHours(); $("#id_535215f69af58 .hours").html((hours < 10 ? "0" : "") + hours); }, 1000);
            });</script>
    </div>
            </div>
            <div class='well dragbox' id='dragbox_15207' style='z-index: 4;
    left: 12px; top: 52px; width: 305px; height: 300px;'>
    
    <div class='dragbox-content' id='view15207' style='clear: both; width: 310px; height: 292px;'>
        <div id="id_535215f69b0f9" style="width: 100%; height: 100%;">
        </div>
        <script type="text/javascript">            $(function () {
                var viewid = "id_535215f69b0f9"; var chart = new Highcharts.Chart({ chart: { renderTo: viewid, plotBackgroundColor: null, plotBorderWidth: null, plotShadow: false }, title: { text: 'Ventas por producto, 2014' }, tooltip: { formatter: function () { return '<b>' + this.point.name + '</b>: ' + this.percentage + ' %'; } }, plotOptions: { pie: { allowPointSelect: true, cursor: 'pointer', dataLabels: { enabled: true, color: '#000000', connectorColor: '#000000', formatter: function () { return this.point.name + ': ' + this.percentage + ' %'; } }} },
                    series: [{ type: 'pie', name: 'Browser share',
                        data: [['Producto F', 45.0], ['Producto A', 26.8], { name: 'Producto B', y: 12.8, sliced: true, selected: true },
         ['Producto C', 8.5], ['Producto D', 6.2], ['Otros', 0.7]]
                    }]
                });
            });</script>
    </div>
            </div>
            
        </div>
        <script type='text/javascript'>//<![CDATA[
            (function () { function g() { var ifr = 0; if (window.parent != window) { ifr = 1 } new Image().src = '/mod_pagespeed_beacon?ets=load:' + (Number(new Date()) - window.mod_pagespeed_start) + '&ifr=' + ifr + '&url=' + encodeURIComponent('http://jslate.com/dashboards/view/13135'); window.mod_pagespeed_loaded = true; }; var f = window.addEventListener; if (f) { f('load', g, false); } else { f = window.attachEvent; if (f) { f('onload', g); } } })();
//]]></script>
   
</asp:Content>
