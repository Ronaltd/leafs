import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css'; // this line is not on the lecture video
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
// import MapboxDirections from "@mapbox/mapbox-gl-directions";
// import Directions from '@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions';
import MapboxDirections from '@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions';
import '@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions.css';


const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 10, duration: 2000 });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.info_window); // add this

    const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '40px';
      element.style.height = '40px';

    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);
  });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/lucianawagon/ckpq5h7ek16jp18o0cj4mc14z'
    });


    // map.addControl(new MapboxDirections({accessToken: mapboxgl.accessToken}), 'top-left');

    const directions = new MapboxDirections({
      accessToken: mapboxgl.accessToken,
      unit: 'metric',
    });

    map.addControl(directions, 'top-left');
// ------------ Search Bar -------------//

    // map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
    //                                   mapboxgl: mapboxgl }));

    // Add the control to the map.
    const geocoder = new MapboxGeocoder({
    accessToken: mapboxgl.accessToken,
    mapboxgl: mapboxgl
    });

    document.getElementById('geocoder').appendChild(geocoder.onAdd(map));

// ---- navigation control under search bar -----//
    const nav = new mapboxgl.NavigationControl();
    map.addControl(nav);

// ------------- User location ------------//

    // Initialize the geolocate control.
    const geolocate = new mapboxgl.GeolocateControl({
     positionOptions: {
       enableHighAccuracy: true
     },
     trackUserLocation: true
    });
    // Add the control to the map.
    map.addControl(geolocate);
    map.on('load', function() {
      geolocate.trigger();
    });
// -----------------------------------------//

    // const geocoder = new MapboxGeocoder({
    // accessToken: mapboxgl.accessToken,
    // mapboxgl: mapboxgl
    // });

    // document.getElementById('geocoder').appendChild(geocoder.onAdd(map));

// ----------------------------------------//
    const markers = JSON.parse(mapElement.dataset.markers);

    // markers.forEach((marker) => {
    //   new mapboxgl.Marker()
    //     .setLngLat([ marker.lng, marker.lat ])
    //     .addTo(map);
    // });
    addMarkersToMap(map, markers)
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };


