import 'package:goods_mobile_app/common_libs.dart';

class AuthHeader extends StatelessWidget {
  final String headerText;

  const AuthHeader({
    super.key,
    required this.headerText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        color: AppColors.primaryWhite,
        width: double.infinity,
        child: Column(
          children: [
            Container(
                height: 53.6,
                width: double.infinity,
                alignment: Alignment.center,
                child: Image.asset(AppImage.demoLogo)),
            const SizedBox(
              height: 8.5,
            ),
            Text(
              headerText,
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ],
        ));
  }
}
