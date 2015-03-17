# Reproducible Research: Peer Assessment 1

```r
echo = TRUE
suppressPackageStartupMessages(require(dplyr))
suppressPackageStartupMessages(require(plyr))
library(googleVis)
library(gridExtra)
library(ggplot2)
library(ggthemes)
library(maps)
library(mapproj)
library(scales)
options(scipen = 6) #Reduce probability of scientific notation
#storm.data <- read.csv("StormData.csv") #Read data file
#For better examination and manipulation
#storm.data <- as.data.frame(tbl_df(storm.data))
op <- options(gvis.plot.tag='chart')
#storm.data2 <- storm.data
#Change state abbreviations to state names (lowercase) to match the map data
#storm.data2$STATE <- state.name[match(storm.data2$STATE, state.abb)]
#Load the map state data
m.usa <- map_data("state")
f<- state.x77
states <- data.frame(state.name, state.x77)
#storm.fatalities.map <- aggregate(FATALITIES ~ STATE, storm.data2, sum)
#storm.injuries.map <- aggregate(INJURIES ~ STATE, storm.data2, sum)
#storm.prop.map <- aggregate(PROPDMG ~ STATE, storm.data2, sum)
#storm.crops.map <- aggregate(CROPDMG ~ STATE, storm.data2, sum)
gvisGeoChart(states, "state.name", "Murder",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400))
```

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>GeoChartID15bae2721694b</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<style type="text/css">
body {
  color: #444444;
  font-family: Arial,Helvetica,sans-serif;
  font-size: 75%;
  }
  a {
  color: #4D87C7;
  text-decoration: none;
}
</style>
</head>
<body>
 <!-- GeoChart generated in R 3.1.2 by googleVis 0.5.6 package -->
<!-- Tue Mar 17 09:42:59 2015 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataGeoChartID15bae2721694b () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Alabama",
15.1 
],
[
 "Alaska",
11.3 
],
[
 "Arizona",
7.8 
],
[
 "Arkansas",
10.1 
],
[
 "California",
10.3 
],
[
 "Colorado",
6.8 
],
[
 "Connecticut",
3.1 
],
[
 "Delaware",
6.2 
],
[
 "Florida",
10.7 
],
[
 "Georgia",
13.9 
],
[
 "Hawaii",
6.2 
],
[
 "Idaho",
5.3 
],
[
 "Illinois",
10.3 
],
[
 "Indiana",
7.1 
],
[
 "Iowa",
2.3 
],
[
 "Kansas",
4.5 
],
[
 "Kentucky",
10.6 
],
[
 "Louisiana",
13.2 
],
[
 "Maine",
2.7 
],
[
 "Maryland",
8.5 
],
[
 "Massachusetts",
3.3 
],
[
 "Michigan",
11.1 
],
[
 "Minnesota",
2.3 
],
[
 "Mississippi",
12.5 
],
[
 "Missouri",
9.3 
],
[
 "Montana",
5 
],
[
 "Nebraska",
2.9 
],
[
 "Nevada",
11.5 
],
[
 "New Hampshire",
3.3 
],
[
 "New Jersey",
5.2 
],
[
 "New Mexico",
9.7 
],
[
 "New York",
10.9 
],
[
 "North Carolina",
11.1 
],
[
 "North Dakota",
1.4 
],
[
 "Ohio",
7.4 
],
[
 "Oklahoma",
6.4 
],
[
 "Oregon",
4.2 
],
[
 "Pennsylvania",
6.1 
],
[
 "Rhode Island",
2.4 
],
[
 "South Carolina",
11.6 
],
[
 "South Dakota",
1.7 
],
[
 "Tennessee",
11 
],
[
 "Texas",
12.2 
],
[
 "Utah",
4.5 
],
[
 "Vermont",
5.5 
],
[
 "Virginia",
9.5 
],
[
 "Washington",
4.3 
],
[
 "West Virginia",
6.7 
],
[
 "Wisconsin",
3 
],
[
 "Wyoming",
6.9 
] 
];
data.addColumn('string','state.name');
data.addColumn('number','Murder');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartGeoChartID15bae2721694b() {
var data = gvisDataGeoChartID15bae2721694b();
var options = {};
options["width"] =    600;
options["height"] =    400;
options["region"] = "US";
options["displayMode"] = "regions";
options["resolution"] = "provinces";

    var chart = new google.visualization.GeoChart(
    document.getElementById('GeoChartID15bae2721694b')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "geochart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartGeoChartID15bae2721694b);
})();
function displayChartGeoChartID15bae2721694b() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartGeoChartID15bae2721694b"></script>
 
<!-- divChart -->
  
<div id="GeoChartID15bae2721694b" 
  style="width: 600; height: 400;">
</div>
 <div><span>Data: states &#8226; Chart ID: <a href="Chart_GeoChartID15bae2721694b.html">GeoChartID15bae2721694b</a> &#8226; <a href="https://github.com/mages/googleVis">googleVis-0.5.6</a></span><br /> 
<!-- htmlFooter -->
<span> 
  R version 3.1.2 (2014-10-31) 
  &#8226; <a href="https://developers.google.com/terms/">Google Terms of Use</a> &#8226; <a href="https://google-developers.appspot.com/chart/interactive/docs/gallery/geochart">Documentation and Data Policy</a>
</span></div>
</body>
</html>
