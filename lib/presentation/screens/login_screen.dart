import 'package:auto_route/auto_route.dart';
import 'package:bld/application/auth/sign_in_with_email_and_password/sign_in_with_email_and_password.input.dart';
import 'package:bld/application/auth/sign_in_with_email_and_password/sign_in_with_email_and_password.use_case.dart';
import 'package:bld/domain/user/model/usermodel.dart';
import 'package:bld/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = useState(const UserModel());
    final passwordController = useTextEditingController(text: "");
    final hidden = useState(true);
    final obscureText = useState(true);
    final numberfocus = useFocusNode();
    final passwordfocus = useFocusNode();
    final formkey = useState(GlobalKey<FormState>());
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              color: Colors.white,
              child: Form(
                key: formkey.value,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        children: [
                          // const SizedBox(
                          //   height: 50,
                          // ),
                          Image.asset(
                            "assets/Logo.png",
                            height: 177.65,
                            width: 177.65,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Please Enter Your Mobile Number below",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey)),
                          const SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            height: 285,
                            width: 367,
                            child: Column(
                              children: [
                                const Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Mobile Number",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 83,
                                      height: 56,
                                      decoration: const BoxDecoration(
                                          color: Color(0xffF2F2F2),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      child: const Center(
                                        child: Text("+962"),
                                      ),
                                    ),
                                    Container(
                                      width: 260,
                                      height: 56,
                                      decoration: const BoxDecoration(
                                          color: Color(0xffF2F2F2),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      child: TextFormField(
                                        focusNode: numberfocus,
                                        textAlign: TextAlign.start,
                                        validator: MultiValidator([
                                          RequiredValidator(
                                              errorText:
                                                  "This Field is Required"),
                                          LengthRangeValidator(
                                              min: 10,
                                              max: 10,
                                              errorText:
                                                  "phone should be 10 digits")
                                        ]),
                                        onChanged: (value) => user.value =
                                            user.value.copyWith(phone: value),
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.red)),
                                          errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.red)),
                                          contentPadding: EdgeInsets.only(
                                              left: 30,
                                              top: 15,
                                              bottom: 10,
                                              right: 10),
                                          hintText: "07xxxxxxxx",
                                          hintStyle: TextStyle(
                                            color: Colors.black26,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        keyboardType: TextInputType.text,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Password",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 367,
                                  height: 56,
                                  decoration: const BoxDecoration(
                                      color: Color(0xffF2F2F2),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: TextFormField(
                                    focusNode: passwordfocus,
                                    textAlign: TextAlign.start,
                                    obscureText: hidden.value,
                                    validator: MultiValidator([
                                      RequiredValidator(
                                          errorText: "This Field is Required"),
                                      LengthRangeValidator(
                                          min: 8,
                                          max: 10,
                                          errorText:
                                              "Password characters should be 8-10")
                                    ]),
                                    controller: passwordController,
                                    decoration: InputDecoration(
                                      suffixIcon: obscureText.value
                                          ? IconButton(
                                              onPressed: () =>
                                                  hidden.value = !hidden.value,
                                              icon: Icon(
                                                hidden.value
                                                    ? Icons.visibility_off
                                                    : Icons.visibility,
                                              ),
                                            )
                                          : const SizedBox.shrink(),
                                      border: InputBorder.none,
                                      focusedErrorBorder:
                                          const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.red)),
                                      errorBorder: const UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.red)),
                                      contentPadding: const EdgeInsets.only(
                                          left: 30,
                                          top: 15,
                                          bottom: 10,
                                          right: 10),
                                      hintText: "password",
                                      hintStyle: const TextStyle(
                                        color: Colors.black26,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    keyboardType: TextInputType.text,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    if (formkey.value.currentState!
                                        .validate()) {
                                      await ref
                                          .read(
                                              signInWithEmailAndPasswordUseCaseProvider)
                                          .execute(
                                              SignInWithEmailAndPasswordUseCaseInput(
                                                  phone: user.value.phone,
                                                  password:
                                                      passwordController.text))
                                          .then((response) => response.fold(
                                              (l) => print("nope"),
                                              (r) => context.router.replaceAll(
                                                  [const HomeRoute()])));
                                    }
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 56,
                                    decoration: const BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Color(0xff254955),
                                          Color(0xff3B788B)
                                        ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: const Center(
                                        child: Text(
                                      "Send Code",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "Don’t have an account?",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context.router.push(const RegisterRoute());
                                  },
                                  child: const Text(
                                    "Register",
                                    style: TextStyle(
                                        color: Color(0xff0093FF), fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const Text(
                              "© 2023 BLD. All Rights Reserved.",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            );
          },
        ),
      ),
    );
  }
}
