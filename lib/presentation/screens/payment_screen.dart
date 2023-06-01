import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:bld/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart' as http;

@RoutePage()
class PaymentScreen extends StatelessWidget {
  final String? baseurl;
  const PaymentScreen({super.key, this.baseurl});

  @override
  Widget build(BuildContext context) {
    print(baseurl);
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {
            print(url);
          },
          onPageFinished: (String url) async {
            if (url.contains("EndPayment")) {
              final Uri uri = Uri.parse(url);
              print(uri);
              final resposne = await http.get(uri);
              print(resposne.body);
              final returnValue = resposne.body;
              final jsonde = json.decode(resposne.body);
              if (jsonde['AZSVR'] == "SUCCESS") {
                if (context.mounted) {
                  context.router.replaceAll([const MainRoute()]);
                }
              } else {
                print("object");
                // showSnack();
              }
            }
          },
          onWebResourceError: (WebResourceError error) {
            print(error);
          },
          // onNavigationRequest: (NavigationRequest request) {
          //   // if (request.url.contains("EndPayment")) {
          //   //   final Uri uri = Uri.parse(request.url);
          //   //   print(uri);
          //   //   print(uri.queryParameters);
          //   //   final String returnValue = uri.data!.parameters['AZSVR']!;
          //   //   if (returnValue == "SUCCESS") {
          //   //     context.router.replaceAll([const MainRoute()]);
          //   //   } else {
          //   //     // showSnack();
          //   //   }
          //   //   return NavigationDecision.prevent;
          //   // }
          //   // return NavigationDecision.navigate;
          // },
        ),
      )
      ..loadRequest(Uri.parse(baseurl!));
    return Scaffold(
      body: Center(
        child: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}
// $storageUrl/Shopping/InitPayment?id=$orderid