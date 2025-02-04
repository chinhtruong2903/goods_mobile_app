import 'package:goods_mobile_app/common_libs.dart';

class AppTypography {
  static const String fontRegular = 'Inter-Regular';
  static const String fontMedium = 'Inter-Medium';
  static const String fontBold = 'Inter-Bold';

  static TextTheme textTheme = const TextTheme(
    headlineLarge: TextStyle(
      fontFamily: fontBold,
      fontSize: 26,
    ),
    headlineMedium: TextStyle(
      fontFamily: fontBold,
      fontSize: 24,
    ),
    headlineSmall: TextStyle(
      fontFamily: fontBold,
      fontSize: 22,
    ),
    bodyLarge: TextStyle(
      fontFamily: fontRegular,
      fontSize: 16,
    ),
    bodyMedium: TextStyle(
      fontFamily: fontRegular,
      fontSize: 14,
    ),
    bodySmall: TextStyle(
      fontFamily: fontRegular,
      fontSize: 12,
    ),
    labelLarge: TextStyle(
      fontFamily: fontMedium,
      fontSize: 18,
    ),
    labelSmall: TextStyle(
      fontFamily: fontMedium,
      fontSize: 14,
    ),
  );
}
