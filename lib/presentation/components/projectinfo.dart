import 'package:bld/domain/projects/model/userprojectsmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class ProjectInfo extends HookWidget {
  final UserProjectsModel? project;
  const ProjectInfo({super.key, this.project});

  @override
  Widget build(BuildContext context) {
    String text = project!.location!;
    print(text);
    List<String> numbers = text.split(",");

    String number1 = numbers[0].trim();
    String number2 = numbers[1].trim();

    double parsedNumber1 = double.parse(number1);
    double parsedNumber2 = double.parse(number2);

    print("Number 1: $parsedNumber1");
    print("Number 2: $parsedNumber2");

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("assets/area.png"),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  project!.area!,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset("assets/cost.png"),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "JOD 100000",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset("assets/photos.png"),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  project!.files!.length.toString(),
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Description",
            style: TextStyle(fontSize: 18),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            project!.description!,
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Location",
            style: TextStyle(fontSize: 18),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 220,
          width: double.infinity,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(width: 2, color: const Color(0xffDEF0F5))),
          child: Column(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: IgnorePointer(
                    child: FlutterMap(
                      options: MapOptions(
                        center: LatLng(parsedNumber1, parsedNumber2),
                        zoom: 12,
                      ),
                      children: [
                        TileLayer(
                          urlTemplate:
                              'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  project!.location!,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
