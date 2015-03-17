# Reproducible Research: Peer Assessment 1

```r
echo = TRUE
suppressPackageStartupMessages(require(dplyr))
suppressPackageStartupMessages(require(plyr))
library(googleVis)
```

```
## 
## Welcome to googleVis version 0.5.6
## 
## Please read the Google API Terms of Use
## before you start using the package:
## https://developers.google.com/terms/
## 
## Note, the plot method of googleVis will by default use
## the standard browser to display its output.
## 
## See the googleVis package vignettes for more details,
## or visit http://github.com/mages/googleVis.
## 
## To suppress this message use:
## suppressPackageStartupMessages(library(googleVis))
```

```r
library(gridExtra)
```

```
## Loading required package: grid
```

```r
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
GeoStates <- gvisGeoChart(states, "state.name", "Murder",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400))
plot(GeoStates)
```

<!-- GeoChart generated in R 3.1.2 by googleVis 0.5.6 package -->
<!-- Tue Mar 17 09:40:15 2015 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataGeoChartID15b646216f037 () {
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
function drawChartGeoChartID15b646216f037() {
var data = gvisDataGeoChartID15b646216f037();
var options = {};
options["width"] =    600;
options["height"] =    400;
options["region"] = "US";
options["displayMode"] = "regions";
options["resolution"] = "provinces";

    var chart = new google.visualization.GeoChart(
    document.getElementById('GeoChartID15b646216f037')
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
callbacks.push(drawChartGeoChartID15b646216f037);
})();
function displayChartGeoChartID15b646216f037() {
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
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartGeoChartID15b646216f037"></script>
 
<!-- divChart -->
  
<div id="GeoChartID15b646216f037" 
  style="width: 600; height: 400;">
</div>
