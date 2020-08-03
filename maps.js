function initMap() {
    // The location of New York City
    var nyc = {
      lng: -74.0060,
      lat: 40.7128
    };
    // The map, centered at New York City
    var map = new google.maps.Map(
      document.getElementById('map'), {
        zoom: 10,
        center: nyc
      });
    
    
    
    // The marker, positioned at New York City
    var marker = new google.maps.Marker({
      position: nyc,
      map: map
    });

    map.data.addGeoJson(cities);

    map.data.setStyle(function(feature) {
        var icon = {
            url: "https://cdn3.iconfinder.com/data/icons/bank-map-pointers/512/xxx043-512.png", // url
            scaledSize: new google.maps.Size(36, 36)
        };
        if (feature.getProperty('icon')) {
          icon = feature.getProperty('icon');
        }
        return /** @type {google.maps.Data.StyleOptions} */({
          icon: icon
        });
      });
    
  }
  

  
  // GeoJSON, describing the locations and names of some tenements in New York City.
  const cities = {
    type: "FeatureCollection",
    features: [
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [-74.002534, 40.73877] },
        properties: { name: "Horatio Street Tenement"}
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
        geometry: { type: "Point", coordinates: [-73.995585, 40.728204] },
        properties: { name: "Mercer Street Tenement" }
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [-73.994822, 40.73035] },
        properties: { name: "Greene Street Tenement" }
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [-73.986468, 40.742629] },
        properties: { name: "Madison Avenue Tenement" }
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [-73.959847, 40.77364] },
        properties: { name: "77th Street Tenement" }
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [-73.96389, 40.803232] },
        properties: { name: "Amsterdam Avenue Tenement" }
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [-73.920625, 40.623979] },
        properties: { name: "East 57th Street Tenement" }
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [-73.793604, 40.71047] },
        properties: { name: "169th Street Tenement" }
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [-73.91155, 40.873194] },
        properties: { name: "Broadway Street Tenement"}
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [-73.968507, 40.801763] },
        properties: { name: "West End Avenue Tenement"}
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [-73.887714, 40.7666] },
        properties: { name: "82nd Street Tenement"}
      },
      {
        type: "Feature",
        geometry: { type: "Point", coordinates: [-73.997006, 40.717667] },
        properties: { name: "Mott Street Tenement"}
      },
      {
        type: "Feature",
        geometry: { type:"Point", coordinates: [-73.99468, 40.725947] },
        properties: { name: "Bleecker Street Tenement"}
      },
    ]
  };