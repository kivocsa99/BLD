import 'package:auto_route/auto_route.dart';
import 'package:bld/constatns.dart';
import 'package:bld/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong2/latlong.dart';

@RoutePage()
class LocationScreen extends HookWidget {
  final bool? isproject;
  const LocationScreen({super.key, this.isproject});

  @override
  Widget build(BuildContext context) {
    final markpointer = useState(LatLng(31.9539, 35.9106));
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.pop(NewProjectRoute());
        },
        child: const Icon(FontAwesomeIcons.check),
      ),
      body: FlutterMap(
        options: MapOptions(
          onTap: (tapPosition, point) {
            isproject == true
                ? projectbox.put("location", point)
                : projectbox.put("orderlocation", point);
            markpointer.value = point;
          },
          center: LatLng(31.9539, 35.9106),
          zoom: 10,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: markpointer.value,
                builder: (context) => const Icon(
                  Icons.location_on,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
