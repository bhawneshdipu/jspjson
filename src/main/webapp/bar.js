// Create data array of values to visualize
var dataArray = [23, 13, 21, 14, 37, 15, 18, 34, 30];


// Create variable for the SVG
var svg = d3.select("body").append("svg")
          .attr("height","450")
          .attr("width","800");




// Select, append to SVG, and add attributes to rectangles for bar chart
svg.selectAll("rect").filter(".bar1")
    .data(score1Arr)
    .enter().append("rect")
          .attr("class", "bar1")
          .attr("height", function(d, i) {return (d * 60)})
          .attr("width","30")
          .attr("x", function(d, i) {return (i * 70) + 25})
          .attr("y", function(d, i) {return 400 - (d * 60)});


svg.selectAll("rect").filter(".bar2")
.data(score2Arr)
.enter().append("rect")
      .attr("class", "bar2")
      .attr("height", function(d, i) {return (d * 60)})
      .attr("width","30")
      .attr("x", function(d, i) {return (i * 70) + 55})
      .attr("y", function(d, i) {return 400 - (d * 60)});


// Select, append to SVG, and add attributes to text
svg.selectAll("text").filter(".text1")
    .data(score1Arr)
    .enter().append("text")
    .text(function(d) {return d})
           .attr("class", "text1")
           .attr("x", function(d, i) {return (i * 70) + 28})
           .attr("y", function(d, i) {return 400 - (d * 60)});

svg.selectAll("text").filter("text2")
.data(score2Arr)
.enter().append("text")
.text(function(d) {return d})
       .attr("class", "text2")
       .attr("x", function(d, i) {return (i * 70) + 56})
       .attr("y", function(d, i) {return 400 - (d * 60)});


svg.append("text")
.attr("x", (300))             
.attr("y", (40))
.attr("text-anchor", "middle")  
.style("font-size", "30px") 
.text(name);
