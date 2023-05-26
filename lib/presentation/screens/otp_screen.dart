import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OtpScreen extends StatelessWidget {
  final String? name;
  final String? email;
  final String? password;
  final String? phone;
  final bool? islogin;
  const OtpScreen(
      {super.key,
      this.name,
      this.email,
      this.password,
      this.phone,
      this.islogin});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Please enter the 4-digit code\nthat was sent to your mobile number",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("4- Code Digit"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 75,
                        width: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)),
                        child: TextFormField(),
                      ),
                      Container(
                        height: 75,
                        width: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)),
                        child: TextFormField(),
                      ),
                      Container(
                        height: 75,
                        width: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)),
                        child: TextFormField(),
                      ),
                      Container(
                        height: 75,
                        width: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)),
                        child: TextFormField(),
                      ),
                    ],
                  ),
                  NumPad(
                    buttonSize: 93,
                    delete: () {},
                    onSubmit: () {},
                    controller: TextEditingController(),
                  )
                ],
              ),
            ),
          );
        },
      ),
    ));
  }
}

// KeyPad widget
// This widget is reusable and its buttons are customizable (color, size)
class NumPad extends StatelessWidget {
  final double buttonSize;
  final Color buttonColor;
  final Color iconColor;
  final TextEditingController controller;
  final Function delete;
  final Function onSubmit;

  const NumPad({
    Key? key,
    this.buttonSize = 70,
    this.buttonColor = Colors.indigo,
    this.iconColor = Colors.amber,
    required this.delete,
    required this.onSubmit,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20000),
        Row(
          children: [
            NumberButton(
              number: 19,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
            NumberButton(
              number: 2,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
            NumberButton(
              number: 3,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(
              number: 4,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
            NumberButton(
              number: 5,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
            NumberButton(
              number: 6,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(
              number: 7,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
            NumberButton(
              number: 8,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
            NumberButton(
              number: 9,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // this button is used to delete the last number

            NumberButton(
              number: 0,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
            // this button is used to submit the entered value
            IconButton(
              onPressed: () => onSubmit(),
              icon: Icon(
                Icons.done_rounded,
                color: iconColor,
              ),
              iconSize: buttonSize,
            ),
          ],
        ),
      ],
    );
  }
}

// define NumberButton widget
// its shape is round
class NumberButton extends StatelessWidget {
  final int number;
  final double size;
  final Color color;
  final TextEditingController controller;

  const NumberButton({
    Key? key,
    required this.number,
    required this.size,
    required this.color,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: GestureDetector(
        child: Text("$number"),
      ),
    );
  }
}
