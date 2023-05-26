import 'package:bld/domain/ads/model/adsmodel.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../constatns.dart';

class AdsBanner extends HookWidget {
  final List<AdsModel>? adsList;
  const AdsBanner({super.key, this.adsList});

  @override
  Widget build(BuildContext context) {
    final random = useState(Random());
    final AdsModel ads = adsList![random.value.nextInt(adsList!.length)];
    return ads.image != null
        ? Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff373B43),
                      Color(0xff0B0C0D),
                    ]),
                color: Colors.black,
                borderRadius: BorderRadius.circular(25)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: "$storageUrl${ads.image!}",
                  fit: BoxFit.cover,
                )),
          )
        : const SizedBox.shrink();
  }
}
