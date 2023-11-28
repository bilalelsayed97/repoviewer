import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:repoviewr/auth/infrastructure/github_authenticator.dart';
import 'package:repoviewr/core/routes/app_router.gr.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class AuthorizationPage extends StatefulWidget {
  final Uri autorizationUrl;
  final void Function(Uri redirectUrl) onAuthorizationCodeRedirectAttempt;
  final _controller = WebViewController();

  AuthorizationPage(
      {super.key,
      required this.autorizationUrl,
      required this.onAuthorizationCodeRedirectAttempt});

  @override
  State<AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  @override
  void initState() {
    super.initState();
    widget._controller.clearCache();
    WebViewCookieManager().clearCookies();
  }

  @override
  Widget build(BuildContext context) {
    widget._controller
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
            if (request.url
                .startsWith(GithubAuthenticator.redirectUrl.toString())) {
              widget.onAuthorizationCodeRedirectAttempt(Uri.parse(request.url));
              AutoRouter.of(context).pushAndPopUntil(const SplashRoute(),
                  predicate: (route) {
                return false;
              });

              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(widget.autorizationUrl);
    return Scaffold(
      body: SafeArea(
          child: WebViewWidget(
        controller: widget._controller,
      )),
    );
  }
}
