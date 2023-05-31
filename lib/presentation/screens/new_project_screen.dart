import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:bld/application/projects/addproject/addproject.use.case.dart';
import 'package:bld/application/projects/addproject/addproject.use.case.input.dart';
import 'package:bld/application/projects/attachfile/attach.file.use.case.input.dart';
import 'package:bld/presentation/components/picker_dialog.dart';
import 'package:bld/presentation/components/scrollglowbehavior.dart';
import 'package:bld/routes/app_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:latlong2/latlong.dart';

import '../../application/projects/attachfile/attach.file.use.case.dart';
import '../../constatns.dart';

@RoutePage()
class NewProjectScreen extends HookConsumerWidget {
  final LatLng? maplat;
  const NewProjectScreen({super.key, this.maplat});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formkey = useState(GlobalKey<FormState>());
    final titleController = useTextEditingController(text: "");
    final desController = useTextEditingController(text: "");
    final areaController = useTextEditingController(text: "");
    final locationController = useTextEditingController(text: "124.00,129.00");
    final nameNode = useFocusNode();
    final desNode = useFocusNode();
    final areaNode = useFocusNode();
    final imageslist = useState<List<String>>([]);
    final isLoading = useState(false);
    final snakKey = useState(GlobalKey<ScaffoldMessengerState>());
    return Stack(
      children: [
        SafeArea(
          child: ScaffoldMessenger(
            key: snakKey.value,
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: LayoutBuilder(
                builder: (context, constraints) {
                  return SizedBox(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 25.0, right: 25.0),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  height: 62,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () => context.router.pop(),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              color: Color(0xffDEF0F5),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0))),
                                          width: 42,
                                          height: 42,
                                          child: Center(
                                            child:
                                                Image.asset("assets/close.png"),
                                          ),
                                        ),
                                      ),
                                      const Center(
                                        child: Text(
                                          "Create Project",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.transparent,
                                        ),
                                        width: 42,
                                        height: 42,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Expanded(
                                  child: Form(
                                    key: formkey.value,
                                    child: ScrollConfiguration(
                                      behavior: GlowBehavior(),
                                      child: ListView(
                                        keyboardDismissBehavior:
                                            ScrollViewKeyboardDismissBehavior
                                                .onDrag,
                                        children: [
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Project Title",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 46,
                                            decoration: BoxDecoration(
                                                color: const Color(0xff707070)
                                                    .withOpacity(0.1),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15.0))),
                                            child: TextFormField(
                                              focusNode: nameNode,
                                              onFieldSubmitted: (value) =>
                                                  desNode.requestFocus(),
                                              validator: RequiredValidator(
                                                  errorText:
                                                      "This Field is Required"),
                                              controller: titleController,
                                              decoration: const InputDecoration(
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors.red)),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors.red)),
                                                contentPadding: EdgeInsets.only(
                                                    left: 20,
                                                    top: 10,
                                                    bottom: 10,
                                                    right: 20),
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Description",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 120,
                                            decoration: BoxDecoration(
                                                color: const Color(0xff707070)
                                                    .withOpacity(0.1),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15.0))),
                                            child: TextFormField(
                                              focusNode: desNode,
                                              onFieldSubmitted: (value) =>
                                                  areaNode.requestFocus(),
                                              maxLines: 5,
                                              validator: RequiredValidator(
                                                  errorText:
                                                      "This Field is Required"),
                                              controller: desController,
                                              decoration: const InputDecoration(
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors.red)),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors.red)),
                                                contentPadding: EdgeInsets.only(
                                                    left: 20,
                                                    top: 10,
                                                    bottom: 10,
                                                    right: 20),
                                                hintText:
                                                    "Ex. Semi Villas in Dabouq Project with…",
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Project Area",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 46,
                                            decoration: BoxDecoration(
                                                color: const Color(0xff707070)
                                                    .withOpacity(0.1),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15.0))),
                                            child: TextFormField(
                                              focusNode: areaNode,
                                              validator: RequiredValidator(
                                                  errorText:
                                                      "This Field is Required"),
                                              controller: areaController,
                                              decoration: const InputDecoration(
                                                  focusedErrorBorder:
                                                      UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .red)),
                                                  errorBorder:
                                                      UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .red)),
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          left: 20,
                                                          top: 10,
                                                          bottom: 10,
                                                          right: 20),
                                                  border: InputBorder.none,
                                                  hintText: "Ex. 500sqm"),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Upload Images"),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          GestureDetector(
                                            onTap: () async {
                                              await showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return PickerDialog(
                                                    camera: () async {
                                                      var image =
                                                          await ImagePicker()
                                                              .pickImage(
                                                                  source:
                                                                      ImageSource
                                                                          .camera);
                                                      if (image != null) {
                                                        imageslist.value = [
                                                          ...imageslist.value,
                                                          image.path
                                                        ];
                                                      }
                                                      if (context.mounted) {
                                                        context.router.pop();
                                                      }
                                                    },
                                                    gallery: () async {
                                                      var image = await ImagePicker()
                                                          .pickImage(
                                                              source:
                                                                  ImageSource
                                                                      .gallery);
                                                      if (image != null) {
                                                        imageslist.value = [
                                                          ...imageslist.value,
                                                          image.path
                                                        ];
                                                      }

                                                      if (context.mounted) {
                                                        context.router.pop();
                                                      }
                                                    },
                                                  );
                                                },
                                              );
                                            },
                                            child: SizedBox(
                                              width: double.infinity,
                                              height: 75,
                                              child: DottedBorder(
                                                radius:
                                                    const Radius.circular(25),
                                                color: const Color(0xffDEF0F5),
                                                strokeWidth: 1,
                                                dashPattern: const [
                                                  20,
                                                  2,
                                                  20,
                                                  2
                                                ],
                                                child: Center(
                                                  child: imageslist
                                                          .value.isEmpty
                                                      ? Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Image.asset(
                                                                "assets/gallery.png"),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            const Text(
                                                                "Upload Image")
                                                          ],
                                                        )
                                                      : Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: imageslist
                                                              .value
                                                              .map((e) =>
                                                                  Image.file(
                                                                      File(e)))
                                                              .toList(),
                                                        ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Location"),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          GestureDetector(
                                            onTap: () => context.router.push(
                                                LocationRoute(isproject: true)),
                                            child: Container(
                                              width: double.infinity,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color:
                                                        const Color(0xff4365D7),
                                                    width: 1,
                                                  ),
                                                  color: Colors.white,
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              15.0))),
                                              child: const Center(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.pin_drop,
                                                      color: Color(0xff4365D7),
                                                    ),
                                                    Text(
                                                      "Add Location",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff4365D7),
                                                          fontSize: 18),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 10.0,
                                    offset: const Offset(0, -2),
                                  ),
                                ],
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    topRight: Radius.circular(25.0))),
                            height: 104,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      if (formkey.value.currentState!
                                          .validate()) {
                                        if (imageslist.value.isEmpty) {
                                          showSnack(
                                              scaffoldMessengerKey:
                                                  snakKey.value,
                                              title:
                                                  "Please Upload at least 1 picture");
                                        } else if (projectbox.get("location") ==
                                            null) {
                                          showSnack(
                                              scaffoldMessengerKey:
                                                  snakKey.value,
                                              title:
                                                  "Please pick a project location");
                                        } else {
                                          isLoading.value = true;
                                          ref
                                              .read(addprojectprovider)
                                              .execute(AddProjectUseCaseInput(
                                                  apitoken: apitoken,
                                                  description:
                                                      desController.text,
                                                  area: areaController.text,
                                                  location:
                                                      locationController.text,
                                                  name: titleController.text))
                                              .then(
                                                (value) => value.fold(
                                                  (l) {
                                                    isLoading.value = false;
                                                    return l.toString() ==
                                                            "ApiFailures.noResponse()"
                                                        ? showSnack(
                                                            title:
                                                                "Please Check Your internet connection",
                                                            scaffoldMessengerKey:
                                                                snakKey.value)
                                                        : showSnack(
                                                            scaffoldMessengerKey:
                                                                snakKey.value,
                                                            title:
                                                                "Error Occured while creating project , please contact us");
                                                  },
                                                  (r) {
                                                    print(r["ID"]);

                                                    for (var element
                                                        in imageslist.value) {
                                                      ref
                                                          .read(
                                                              ProjectattachfileProvider)
                                                          .execute(
                                                              ProjectAttachFileUseCaseInput(
                                                                  token:
                                                                      apitoken,
                                                                  orderid: 
                                                                      r[
                                                                          "ID"],
                                                                  file: File(
                                                                      element)))
                                                          .then((value) =>
                                                              value.fold((l) {
                                                                isLoading
                                                                        .value =
                                                                    false;
                                                                showSnack(
                                                                    scaffoldMessengerKey:
                                                                        snakKey
                                                                            .value,
                                                                    title:
                                                                        "Error Occured while uploading pictures , please contact us");
                                                              }, (r) async {
                                                                if (element ==
                                                                    imageslist
                                                                        .value
                                                                        .last) {
                                                                  projectbox
                                                                      .clear();
                                                                  isLoading
                                                                          .value =
                                                                      false;
                                                                  showSnack(
                                                                      scaffoldMessengerKey:
                                                                          snakKey
                                                                              .value,
                                                                      title:
                                                                          "Your ptoject has been created succesfully");
                                                                  context.router
                                                                      .replaceAll([
                                                                    const MainRoute()
                                                                  ]);
                                                                }
                                                              }));
                                                    }
                                                  },
                                                ),
                                              );
                                        }
                                      }
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(15.0)),
                                          border: Border.all(
                                            color: Colors.blue,
                                            width: 1,
                                          )),
                                      height: 50,
                                      width: constraints.maxWidth / 2 - 50,
                                      child: const Center(
                                        child: Text(
                                          "Create",
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.blue),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      if (formkey.value.currentState!
                                          .validate()) {
                                        if (imageslist.value.isEmpty) {
                                          showSnack(
                                              scaffoldMessengerKey:
                                                  snakKey.value,
                                              title:
                                                  "Please Upload at least 1 picture");
                                        } else if (projectbox.get("location") ==
                                            null) {
                                          showSnack(
                                              scaffoldMessengerKey:
                                                  snakKey.value,
                                              title:
                                                  "Please pick a project location");
                                        } else {
                                          isLoading.value = true;
                                          ref
                                              .read(addprojectprovider)
                                              .execute(AddProjectUseCaseInput(
                                                  apitoken: apitoken,
                                                  description:
                                                      desController.text,
                                                  area: areaController.text,
                                                  location:
                                                      locationController.text,
                                                  name: titleController.text))
                                              .then(
                                                (value) => value.fold(
                                                  (l) {
                                                    isLoading.value = false;
                                                    return l.toString() ==
                                                            "ApiFailures.noResponse()"
                                                        ? showSnack(
                                                            title:
                                                                "Please Check Your internet connection",
                                                            scaffoldMessengerKey:
                                                                snakKey.value)
                                                        : showSnack(
                                                            scaffoldMessengerKey:
                                                                snakKey.value,
                                                            title:
                                                                "Error Occured while creating project , please contact us");
                                                  },
                                                  (r) {
                                                    print(r["ID"]);
                                                    for (var element
                                                        in imageslist.value) {
                                                      ref
                                                          .read(
                                                              ProjectattachfileProvider)
                                                          .execute(
                                                              ProjectAttachFileUseCaseInput(
                                                                  token:
                                                                      apitoken,
                                                                  orderid:
                                                                      r["ID"],
                                                                  file: File(
                                                                      element)))
                                                          .then((value) =>
                                                              value.fold((l) {
                                                                isLoading
                                                                        .value =
                                                                    false;
                                                                showSnack(
                                                                    scaffoldMessengerKey:
                                                                        snakKey
                                                                            .value,
                                                                    title:
                                                                        "Error Occured while uploading pictures , please contact us");
                                                              }, (r) async {
                                                                if (element ==
                                                                    imageslist
                                                                        .value
                                                                        .last) {
                                                                  projectbox
                                                                      .clear();
                                                                  isLoading
                                                                          .value =
                                                                      false;
                                                                  showSnack(
                                                                      scaffoldMessengerKey:
                                                                          snakKey
                                                                              .value,
                                                                      title:
                                                                          "Your ptoject has been created succesfully");
                                                                  context.router
                                                                      .replaceAll([
                                                                    NewOrdersRoute(
                                                                        comingroute:
                                                                            "projectscreen")
                                                                  ]);
                                                                }
                                                              }));
                                                    }
                                                  },
                                                ),
                                              );
                                        }
                                      }
                                    },
                                    child: Container(
                                      height: 50,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15.0)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Color(0xff3B788B),
                                                Color(0xff2B4D58)
                                              ])),
                                      width: constraints.maxWidth / 2 - 50,
                                      child: const Center(
                                        child: Text(
                                          "Create & Order",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        visibile(
            height: MediaQuery.of(context).size.height, loding: isLoading.value)
      ],
    );
  }
}
