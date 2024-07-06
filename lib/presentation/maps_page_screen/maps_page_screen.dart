import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart'; // Required for handling geographic coordinates

class RecyclingMap extends StatelessWidget {
  final MapController mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recycling Map'),
      ),
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(31.7808,76.9965), // Initial center of the map
          initialZoom: 10, // Initial zoom level of the map
        ),
        mapController: mapController,
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayer(
            markers: [
              Marker(
                width: 40.0,
                height: 40.0,                
                point: LatLng(19.0760, 72.8777),
                child: 
                  Container(
                  child: Icon(
                    Icons.place, // Use a place icon as the marker
                    color: Colors.red, // Change the marker color to red
                  ),
                  )
              )
              ]
            )
            ],
          ),
    );
  }
}
