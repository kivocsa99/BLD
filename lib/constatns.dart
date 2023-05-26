import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

const baseUrl = "https://bld-main.bitsblend.org/api/V1";
const storageUrl = "https://bld-main.bitsblend.org/storage/";
final setting = Hive.box("setting");
final categorybox = Hive.box("category");
final apitoken = setting.get("apitoken");

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
