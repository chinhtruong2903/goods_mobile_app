import 'package:goods_mobile_app/common_libs.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CHATBOT AI',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: RouteConstant.signIn,
    );
  }
}
