import 'package:bld/domain/consultation/model/consultationmodel.dart';
import 'package:flutter/material.dart';

class ConsultationContainer extends StatelessWidget {
  final ConsultationModel? consultation;
  const ConsultationContainer({super.key, this.consultation});

  @override
  Widget build(BuildContext context) {
    final List<String> words = consultation!.text!.split(' ');

    final truncatedWords = words.length <= 10
        ? consultation!.text
        : words.sublist(0, 10).join(' ');

    return Container(
      width: double.infinity,
      height: 100,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            consultation!.name!,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          words.length <= 10
              ? Text(
                  consultation!.text!,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                )
              : RichText(
                  text: TextSpan(
                    text: truncatedWords,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 14),
                    children: const [
                      TextSpan(
                        text: '...',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                      ),
                    ],
                  ),
                  // overflow: TextOverflow.ellipsis,
                ),
        ],
      ),
    );
  }
}
