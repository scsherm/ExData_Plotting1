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
storm.data <- read.csv("StormData.csv") #Read data file
#For better examination and manipulation
storm.data <- as.data.frame(tbl_df(storm.data))
op <- options(gvis.plot.tag='chart')
storm.data2 <- storm.data
#Change state abbreviations to state names (lowercase) to match the map data
storm.data2$STATE <- state.name[match(storm.data2$STATE, state.abb)]
#Load the map state data
m.usa <- map_data("state")

storm.fatalities.map <- aggregate(FATALITIES ~ STATE, storm.data2, sum)
storm.injuries.map <- aggregate(INJURIES ~ STATE, storm.data2, sum)
storm.prop.map <- aggregate(PROPDMG ~ STATE, storm.data2, sum)
storm.crops.map <- aggregate(CROPDMG ~ STATE, storm.data2, sum)
GeoStates <- gvisGeoChart(storm.prop.map, "STATE", "PROPDMG",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400))
plot(GeoStates)
```

<!-- GeoChart generated in R 3.1.2 by googleVis 0.5.6 package -->
<!-- Mon Mar 16 18:10:03 2015 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataGeoChartID13aef22b027a0 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Alabama",
363606.66 
],
[
 "Alaska",
33995.51 
],
[
 "Arizona",
83046.67 
],
[
 "Arkansas",
361121.58 
],
[
 "California",
203598.79 
],
[
 "Colorado",
81496.79 
],
[
 "Connecticut",
29155.17 
],
[
 "Delaware",
18304.17 
],
[
 "Florida",
374427.95 
],
[
 "Georgia",
485873.68 
],
[
 "Hawaii",
11688.61 
],
[
 "Idaho",
41538.09 
],
[
 "Illinois",
357624.15 
],
[
 "Indiana",
260225.49 
],
[
 "Iowa",
685487.35 
],
[
 "Kansas",
387183.8 
],
[
 "Kentucky",
242190.66 
],
[
 "Louisiana",
294074.96 
],
[
 "Maine",
65171.45 
],
[
 "Maryland",
89255.86 
],
[
 "Massachusetts",
78400.37 
],
[
 "Michigan",
225030.23 
],
[
 "Minnesota",
194999.27 
],
[
 "Mississippi",
481811.85 
],
[
 "Missouri",
329207.32 
],
[
 "Montana",
60102.11 
],
[
 "Nebraska",
318614.86 
],
[
 "Nevada",
30711.75 
],
[
 "New Hampshire",
51667.49 
],
[
 "New Jersey",
70504.77 
],
[
 "New Mexico",
54619.96 
],
[
 "New York",
373109.42 
],
[
 "North Carolina",
255058.55 
],
[
 "North Dakota",
163863.13 
],
[
 "Ohio",
559834.39 
],
[
 "Oklahoma",
347294 
],
[
 "Oregon",
22832.59 
],
[
 "Pennsylvania",
288611.06 
],
[
 "Rhode Island",
10880.9 
],
[
 "South Carolina",
151890.23 
],
[
 "South Dakota",
132139.08 
],
[
 "Tennessee",
272126.78 
],
[
 "Texas",
937137.98 
],
[
 "Utah",
45664.33 
],
[
 "Vermont",
97582.57 
],
[
 "Virginia",
206132.3 
],
[
 "Washington",
81090.72 
],
[
 "West Virginia",
163223.28 
],
[
 "Wisconsin",
311608.66 
],
[
 "Wyoming",
37172.2 
] 
];
data.addColumn('string','STATE');
data.addColumn('number','PROPDMG');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartGeoChartID13aef22b027a0() {
var data = gvisDataGeoChartID13aef22b027a0();
var options = {};
options["width"] =    600;
options["height"] =    400;
options["region"] = "US";
options["displayMode"] = "regions";
options["resolution"] = "provinces";

    var chart = new google.visualization.GeoChart(
    document.getElementById('GeoChartID13aef22b027a0')
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
callbacks.push(drawChartGeoChartID13aef22b027a0);
})();
function displayChartGeoChartID13aef22b027a0() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartGeoChartID13aef22b027a0"></script>
 
<!-- divChart -->
  
<div id="GeoChartID13aef22b027a0" 
  style="width: 600; height: 400;">
</div>
