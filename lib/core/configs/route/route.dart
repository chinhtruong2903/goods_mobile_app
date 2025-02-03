import 'package:goods_mobile_app/common_libs.dart';
import 'package:goods_mobile_app/features/authentication/presentation/pages/sign_in.page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstant.signIn:
        return MaterialPageRoute(
          builder: (_) => const SignInPage(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => PopScope(
            canPop: false,
            child: Scaffold(
              body:
                  Center(child: Text('No route defined for ${settings.name}')),
            ),
          ),
        );
    }
  }
}
