import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:bld/presentation/components/picker_dialog.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageContainer extends StatelessWidget {
  final List<String>? images;
  const ImageContainer({super.key, this.images});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await showDialog(
          context: context,
          builder: (context) {
            return PickerDialog(
              camera: () async {
                var image =
                    await ImagePicker().pickImage(source: ImageSource.camera);
                if (image != null) {
                  images!.add(image.path);
                }
                if (context.mounted) context.router.pop();
              },
              gallery: () async {
                var image =
                    await ImagePicker().pickImage(source: ImageSource.gallery);
                if (image != null) {
                  images!.add(image.path);
                }

                if (context.mounted) context.router.pop();
              },
            );
          },
        );
      },
      child: SizedBox(
        width: double.infinity,
        height: 75,
        child: DottedBorder(
          radius: const Radius.circular(25),
          color: const Color(0xffDEF0F5),
          strokeWidth: 1,
          dashPattern: const [20, 2, 20, 2],
          child: Center(
            child: images!.isEmpty
                ? Row(
                    children: [
                      Image.asset("assets/gallery.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Upload Image")
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: images!.map((e) => Image.file(File(e))).toList(),
                  ),
          ),
        ),
      ),
    );
  }
}
