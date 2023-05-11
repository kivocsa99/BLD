import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../routes/app_route.dart';

@RoutePage()
class ConsultationScreen extends StatelessWidget {
  const ConsultationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          width: double.infinity,
          height: 250,
          child: Image.asset(
            "assets/consultation.png",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "No Consultations Yet!",
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
            "Start a Consultations with one\n              *Of our experts",
            style: TextStyle(fontSize: 20.0)),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            context.router.push(const NewConsultationRoute());
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                    colors: [Color(0xff4365D7), Color(0xff324CA3)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            width: double.infinity,
            height: 50,
            child: const Center(
              child: Text(
                "Consult an Expert",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
