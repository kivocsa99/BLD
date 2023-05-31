import 'package:auto_route/auto_route.dart';
import 'package:bld/constatns.dart';
import 'package:bld/routes/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class PaymentScreen extends StatelessWidget {
  final String? baseurl;
  const PaymentScreen({super.key, this.baseurl});

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.contains("EndPayment")) {
              final Uri uri = Uri.parse(request.url);
              final String returnValue = uri.queryParameters['AZSVR']!;
              if (returnValue == "SUCCESS") {
                context.router.replaceAll([const MainRoute()]);
              } else {
                // showSnack();
              }
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(baseUrl));
    return WebViewWidget(
      controller: controller,
    );
  }
}
// $storageUrl/Shopping/InitPayment?id=$orderid