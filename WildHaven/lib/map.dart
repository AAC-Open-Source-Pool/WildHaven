import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(20.5937, 78.9629), // Center on India
          zoom: 5.0, // Adjusted zoom level to show the whole country
          bounds: LatLngBounds(
            LatLng(8.0, 68.0), // Southwest corner of India
            LatLng(37.0, 97.0), // Northeast corner of India
          ),
          boundsOptions: FitBoundsOptions(
            padding: EdgeInsets.all(20), // Padding around the edges
          ),
        ),
        children: [
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayer(
            markers: [
              // Marker for Kaziranga National Park
              Marker(
                point: LatLng(26.6499, 93.1696),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Kaziranga National Park', 'Famous for its one-horned rhinoceros and diverse wildlife.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Sundarbans National Park
              Marker(
                point: LatLng(21.9497, 88.2414),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Sundarbans National Park', 'A UNESCO World Heritage site, known for its mangroves and tigers.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Jim Corbett National Park
              Marker(
                point: LatLng(29.5322, 78.9600),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Jim Corbett National Park', 'India’s oldest national park, famous for Bengal tigers.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Bandhavgarh National Park
              Marker(
                point: LatLng(23.6881, 81.0450),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Bandhavgarh National Park', 'Known for its high density of tigers and ancient fort ruins.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Ranthambhore National Park
              Marker(
                point: LatLng(26.0000, 76.3499),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Ranthambhore National Park', 'Famous for its tiger population and historical fort.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Gir National Park
              Marker(
                point: LatLng(21.1154, 70.7048),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Gir National Park', 'The only home of the Asiatic lions in the world.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Periyar Wildlife Sanctuary
              Marker(
                point: LatLng(9.4920, 77.0782),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Periyar Wildlife Sanctuary', 'Famous for its elephants and beautiful lake.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Keoladeo National Park
              Marker(
                point: LatLng(27.1333, 77.5333),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Keoladeo National Park', 'A UNESCO World Heritage site, known for birdwatching.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Silent Valley National Park
              Marker(
                point: LatLng(11.1690, 76.7105),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Silent Valley National Park', 'A pristine tropical rainforest with rare species.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Manas National Park
              Marker(
                point: LatLng(26.7400, 90.9517),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Manas National Park', 'Known for its elephants, tigers, and rhinos.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Rajaji National Park
              Marker(
                point: LatLng(30.6197, 77.9865),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Rajaji National Park', 'Famous for its wildlife, including tigers and elephants.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Tirthan Valley Sanctuary
              Marker(
                point: LatLng(32.0146, 77.5270),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Tirthan Valley Sanctuary', 'A haven for wildlife, especially the Himalayan brown bear.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Dudhwa National Park
              Marker(
                point: LatLng(27.3501, 81.3111),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Dudhwa National Park', 'Known for its swamp deer and Bengal tigers.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Valley of Flowers National Park
              Marker(
                point: LatLng(30.7386, 79.9661),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Valley of Flowers National Park', 'A UNESCO World Heritage site, known for its diverse flora.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Nagarhole National Park
              Marker(
                point: LatLng(12.1033, 75.9910),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Nagarhole National Park', 'Known for its rich wildlife including tigers, elephants, and leopards.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Hazaribagh Wildlife Sanctuary
              Marker(
                point: LatLng(23.9842, 85.6140),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Hazaribagh Wildlife Sanctuary', 'A sanctuary known for its diverse species of flora and fauna.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Bhitarkanika National Park
              Marker(
                point: LatLng(20.3417, 86.8107),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Bhitarkanika National Park', 'Known for its mangrove forests and saltwater crocodiles.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Madhav National Park
              Marker(
                point: LatLng(24.3193, 77.6071),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Madhav National Park', 'A park famous for its lush greenery and diverse wildlife.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              // Marker for Sulaimany National Park
              Marker(
                point: LatLng(31.6456, 77.3637),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Sulaimany National Park', 'A park known for its biodiversity and trekking trails.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              Marker(
                point: LatLng(17.3854, 78.4732),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Nehru Zoological Park', 'It is a popular wildlife park offering a variety of animal exhibits and lush green landscapes.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              Marker(
                point: LatLng(17.9916, 79.5934),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Kakatiya Zoological Park', 'Kakatiya Zoological Park, located in Warangal, Telangana, is a well-maintained wildlife park known for its diverse animal species and natural habitat.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              Marker(
                point: LatLng( 17.3139, 78.4897),
                width: 40.0,
                height: 40.0,
                builder: (ctx) => GestureDetector(
                  onTap: () {
                    _showPopup(context, 'Jalpally Park', 'Jalpally Park, located in the Rangareddy district near Hyderabad, is a scenic park offering a peaceful environment and various recreational activities.');
                  },
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
            ],

          ),
        ],
      ),
    );
  }

  void _showPopup(BuildContext context, String title, String description) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(description),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
