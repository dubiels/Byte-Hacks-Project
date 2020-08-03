function initMap() {
    // The location of New York City
    var nyc = {
      lng: -74.0060,
      lat: 40.7128
    };
    // The map, centered at New York City
    var map = new google.maps.Map(
      document.getElementById('map'), {
        zoom: 9,
        center: nyc
      });
    // The marker, positioned at New York City
    var marker = new google.maps.Marker({
      position: nyc,
      map: map
    });

    map.data.addGeoJson(cities);
  }
  
  // GeoJSON, describing the locations and names of some tenements in New York City.
  const cities = {
    type: "FeatureCollection",
    features: [
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [-74.002534, 40.73877] },
        properties: { name: "Horatio Street Tenement" }
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [-73.99959, 40.714465] },
        properties: { name: "Mulberry Street Tenement" }
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [-74.007964, 40.740295] },
        properties: { name: "Washington Street Tenement" }
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [40.728204, -73.995585] },
        properties: { name: "Mercer Street Tenement" }
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [40.73035, -73.994822] },
        properties: { name: "Greene Street Tenement" }
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [40.742629, -73.986468] },
        properties: { name: "Madison Avenue Tenement" }
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [40.77364, -73.959847] },
        properties: { name: "77th Street Tenement" }
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [40.803232, -73.96389] },
        properties: { name: "Amsterdam Avenue Tenement" }
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [40.623979, -73.920625] },
        properties: { name: "East 57th Street Tenement" }
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [40.71047, -73.793604] },
        properties: { name: "169th Street Tenement" }
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [40.873194, -73.91155] },
        properties: { name: "Broadway Street Tenement"}
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [40.801763, -73.968507] },
        properties: { name: "West End Avenue Tenement"}
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [40.7666, -73.887714] },
        properties: { name: "82nd Street Tenement"}
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [40.717667, -73.997006] },
        properties: { name: "Mott Street Tenement"}
      },
      {
        type: "Feature",
        geometry: { type:"Point", coordinates: [40.725947, -73.99468] },
        properties: { name: "Bleecker Street Tenement"}
      },
    ]
  };