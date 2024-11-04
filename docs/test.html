<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>US Map with Sites</title>
    <script src="https://d3js.org/d3.v6.min.js"></script>
    <style>
        .marker {
            fill: red;
            stroke: white;
            stroke-width: 1.5;
        }
    </style>
</head>
<body>
    <svg width="960" height="600"></svg>
    <script>
        const sites = [
            { name: "Evolve Wellness", coords: [-97.7431, 30.2672] }, // Austin, TX
            { name: "Innercept", coords: [-93.6250, 41.5868] }, // Des Moines, IA
            { name: "Ironwood Maine", coords: [-70.2245, 45.8264] }, // Ironwood, ME
            { name: "Lightwork Therapy", coords: [-79.3832, 43.6532] }, // Toronto, ON (example)
            { name: "Mental Health Speak", coords: [-122.3321, 47.6062] }, // Seattle, WA
            { name: "Monroe Street Housing", coords: [-83.1372, 42.2808] }, // Ann Arbor, MI
            { name: "Paradigm Treatment", coords: [-118.4061, 34.1397] }, // Los Angeles, CA
            { name: "Shortridge Academy", coords: [-71.5761, 43.6401] }, // New Hampshire
            { name: "Taste Recovery", coords: [-85.7585, 38.2542] }, // Louisville, KY
            { name: "The Ridge", coords: [-80.1172, 37.2084] }, // Virginia
            { name: "Tusk Kratom", coords: [-85.7585, 39.7684] }, // Indianapolis, IN
            { name: "West Valley Detox", coords: [-112.0142, 33.7483] } // Phoenix, AZ
        ];

        const width = 960;
        const height = 600;

        const svg = d3.select("svg");

        const projection = d3.geoAlbersUsa()
            .translate([width / 2, height / 2])
            .scale([1000]);

        const path = d3.geoPath().projection(projection);

        // Load and display the US map
        d3.json("https://d3js.org/us-10m.v1.json").then((data) => {
            svg.append("path")
                .datum(topojson.feature(data, data.objects.nation))
                .attr("d", path)
                .attr("fill", "#ccc")
                .attr("stroke", "#333");

            // Add markers for each site
            sites.forEach(site => {
                const [longitude, latitude] = site.coords;

                svg.append("circle")
                    .attr("class", "marker")
                    .attr("cx", projection([longitude, latitude])[0])
                    .attr("cy", projection([longitude, latitude])[1])
                    .attr("r", 5);

                svg.append("text")
                    .attr("x", projection([longitude, latitude])[0])
                    .attr("y", projection([longitude, latitude])[1] - 10)
                    .text(site.name)
                    .attr("font-size", "12px")
                    .attr("text-anchor", "middle");
            });
        });
    </script>
</body>
</html>
