import 'package:goods_mobile_app/common_libs.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.inputBackground,
      primaryColorLight: AppColors.inputBackground,
      primaryColorDark: AppColors.textBlack,
      colorScheme: ColorScheme.light(
        surface: AppColors.inputBackground,
        error: AppColors.errorRed,
        onPrimary: AppColors.primaryWhite,
        onSecondary: AppColors.primaryWhite,
        onSurface: AppColors.textBlack,
        onError: AppColors.primaryWhite,
      ),
      scaffoldBackgroundColor: AppColors.primaryWhite,
      textTheme: AppTypography.textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.inputBackground,
        foregroundColor: AppColors.textBlack,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.successGreen,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}
