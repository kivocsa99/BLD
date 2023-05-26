import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class PickerDialog extends HookWidget {
  final VoidCallback? camera;
  final VoidCallback? gallery;

  const PickerDialog({super.key, this.camera, this.gallery});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0))),
      contentPadding: const EdgeInsets.only(top: 10.0),
      content: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset("assets/picker.json", width: 100, height: 100),
            const Padding(
              padding: EdgeInsets.only(left: 40.0, right: 10.0),
              child: Text("Pick Image From :"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    icon: const Icon(FontAwesomeIcons.image),
                    onPressed: gallery),
                IconButton(
                    icon: const Icon(FontAwesomeIcons.camera),
                    onPressed: camera),
              ],
            )
          ],
        ),
      ),
    );
  }
}
