* http://geojson.io/
* Lupe, um nach Leipzig zu suchen
  * http://geojson.io/#map=8/51.606/12.096
* Marker-Symbol aus Toolbar auswählen und auf Karte klicken

```
{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "properties": {},
      "geometry": {
        "type": "Point",
        "coordinates": [
		  12.3734686781157,
          51.3320818 
        ]
      }
    }
  ]
}
```

* Klick auf marker, um Properties zu bearbeiten (Farbe, Größe, Symbol) (Konvention von Geojson.io, das angezeigt)

```
{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "properties": {
        "marker-color": "#2641d7",
        "marker-size": "large",
        "marker-symbol": "lighthouse"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          12.3980712890625,
          51.25847731518399
        ]
      }
    }
  ]
}
```

* optional: Marker verschieben (über Toolbar-Symbol Layer) 
* optional: Polygon malen (über Toolbar-Symbol Polygon)
* optional: Polygon wieder löschen
