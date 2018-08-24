// GOOGLE:
// import GMaps from 'gmaps/gmaps.js';

// const mapElement = document.getElementById('map');
// if (mapElement) { // don't try to build a map if there's no div#map to inject in
//   const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
//   const markers = JSON.parse(mapElement.dataset.markers);
//   map.addMarkers(markers);
//   if (markers.length === 0) {
//     map.setZoom(2);
//   } else if (markers.length === 1) {
//     map.setCenter(markers[0].lat, markers[0].lng);
//     map.setZoom(14);
//   } else {
//     map.fitLatLngBounds(markers);
//   }
// }

import mapboxgl from 'mapbox-gl/dist/mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const mapElement = document.getElementById('map');
//const markers = JSON.parse(mapElement.dataset.markers);
const spots = JSON.parse(mapElement.dataset.spots);
console.log(spots);

// MODIF FAB
// [{
//   "name": "Top Scooter",
//   "markers": [5.3811128, 43.2832026]
// }, {
//   "name": "Marseille Scooter",
//   "markers": [5.3577398, 43.2895637]
// }, {
//   "name": "Scooter au panier",
//   "markers": [5.3676323, 43.2986109]
// }]


mapboxgl.accessToken = 'pk.eyJ1IjoiZmFiaWVubmFvdXIiLCJhIjoiY2psNTRsZDAyMHJnODNwcThueTZtZ2VsNyJ9.fGDPKWN6bzi5AAGizI-h8A';

const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v9',
//    center: markers[0],
    zoom: 12,

});


// MODIF FAB markers.forEach((marker) => {

//   new mapboxgl.Marker({color: '#ef0075'})
//   .setLngLat(marker)
//   .setPopup(new mapboxgl.Popup().setHTML('<h4>Boutique</h4>'))
//   .addTo(map);
// })
spots.forEach((spot) => {

  new mapboxgl.Marker({color: '#ef0075'})
  .setLngLat(spot.markers)
  .setPopup(new mapboxgl.Popup().setHTML(`<h4>${spot.name}</h4>`))
  .addTo(map);
})

const bounds = new mapboxgl.LngLatBounds();

// markers.forEach(function(m) {
//     bounds.extend(m);
// });
spots.forEach(function(spot) {
    bounds.extend(spot.markers);
});
map.fitBounds(bounds, { padding: 100, animate: false });





