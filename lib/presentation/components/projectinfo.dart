import 'package:bld/domain/projects/model/userprojectsmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProjectInfo extends HookWidget {
  final UserProjectsModel? project;
  const ProjectInfo({super.key, this.project});

  @override
  Widget build(BuildContext context) {
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
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            project!.description!,
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
