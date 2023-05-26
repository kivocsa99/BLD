import 'package:auto_route/auto_route.dart';
import 'package:bld/application/consultation/addnew/add.consultation.use.case.input.dart';
import 'package:bld/constatns.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/consultation/addnew/add.consultation.use.case.dart';

@RoutePage()
class NewConsultationScreen extends HookConsumerWidget {
  const NewConsultationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController(text: "");
    final textController = useTextEditingController(text: "");
    final formkey = useState(GlobalKey<FormState>());
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: formkey.value,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 62,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => context.router.pop(),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xffDEF0F5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              width: 42,
                              height: 42,
                              child: Center(
                                child: Image.asset("assets/close.png"),
                              ),
                            ),
                          ),
                          const Center(
                            child: Text(
                              "Consult an Expert",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
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
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Title",
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
                          color: const Color(0xff707070).withOpacity(0.1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0))),
                      child: TextFormField(
                        validator: RequiredValidator(
                            errorText: "This Field is Required"),
                        controller: nameController,
                        decoration: const InputDecoration(
                          focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          contentPadding: EdgeInsets.only(
                              left: 20, top: 10, bottom: 10, right: 20),
                          hintText: "Ex. Home Renovation Costs",
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
                        "Message",
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
                          color: const Color(0xff707070).withOpacity(0.1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0))),
                      child: TextFormField(
                        validator: RequiredValidator(
                            errorText: "This Field is Required"),
                        controller: textController,
                        decoration: const InputDecoration(
                          focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          contentPadding: EdgeInsets.only(
                              left: 20, top: 10, bottom: 10, right: 20),
                          hintText: "Ex. Items were missing",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.infinity,
                      height: 90,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff3B788B)),
                          color: const Color(0xffDEF0F5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Row(
                          children: [
                            Image.asset("assets/warning.png"),
                            const SizedBox(
                              width: 20,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: 'Please note that we take '),
                                  TextSpan(
                                      text: 'JOD 10',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(text: ' for\nthe Consultation.'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 5,
                          spreadRadius: 5,
                          offset: const Offset(0, 0),
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0))),
                  height: 104,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 25.0, bottom: 25.0),
                    child: GestureDetector(
                      onTap: () {
                        if (formkey.value.currentState!.validate()) {
                          ref
                              .read(addconsultationProvider)
                              .execute(AddConsultationUseCaseInput(
                                  token: apitoken,
                                  text: textController.text,
                                  name: nameController.text))
                              .then((value) =>
                                  value.fold((l) => print(l), (r) => print(r)));
                        }
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff3B788B),
                                  Color(0xff2B4D58)
                                ])),
                        width: double.infinity,
                        child: const Center(
                          child: Text(
                            "Request Consultation",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
