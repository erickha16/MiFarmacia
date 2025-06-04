var map = L.map('map').setView([19.082475, -98.213438], 10);

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

var marker = L.marker([19.082475, -98.213438]).addTo(map);
var marker = L.marker([19.0424, -98.1983]).addTo(map);
var marker = L.marker([19.0576, -98.3017]).addTo(map);
var marker = L.marker([18.9086, -98.4361]).addTo(map);
var marker = L.marker([18.4618, -97.3928]).addTo(map);
var marker = L.marker([20.0177, -97.5228]).addTo(map);