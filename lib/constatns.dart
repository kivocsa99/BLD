import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hive_flutter/adapters.dart';

const baseUrl = "https://bld-main.bitsblend.org/api/V1";
const storageUrl = "https://bld-main.bitsblend.org/storage/";
final setting = Hive.box("setting");
final categorybox = Hive.box("category");
final projectbox = Hive.box("project");
final apitoken = setting.get("apitoken");
Widget visibile({bool? loding, double? height}) {
  return Visibility(
    visible: loding!,
    child: Material(
      child: Center(
        child: Container(
          height: height,
          width: double.infinity,
          color: Colors.black45,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SpinKitCubeGrid(
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Loading ...")
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

void showSnack(
    {String? title, GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey}) {
  final snackbar = SnackBar(
      content: Text(
    title!,
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontSize: 15,
    ),
  ));
  scaffoldMessengerKey?.currentState?.showSnackBar(snackbar);
}
