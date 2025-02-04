import 'package:goods_mobile_app/common_libs.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String? errorText;
  final String? placeholder;
  final bool isValid;
  final bool isPassword;
  final TextEditingController controller;
  final Function(String) onChanged;

  const CustomTextField({
    super.key,
    required this.label,
    required this.controller,
    required this.onChanged,
    this.errorText,
    this.placeholder,
    this.isValid = false,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 50,
          child: TextField(
            controller: controller,
            obscureText: isPassword,
            onChanged: onChanged,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.inputBackground,
              hintText: placeholder,
              hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.inputPlaceholder,
                  ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColors.inputBorder),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color:
                      isValid ? AppColors.successGreen : AppColors.inputBorder,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color:
                      isValid ? AppColors.successGreen : AppColors.inputBorder,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColors.errorRed),
              ),
              suffixIcon: isValid
                  ? Icon(Icons.check, color: AppColors.successGreen)
                  : null,
            ),
          ),
        ),
        if (errorText != null) ...[
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline_outlined,
                color: AppColors.errorRed,
                size: 20,
              ),
              const SizedBox(width: 4),
              Text(
                errorText!,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: AppColors.errorRed),
              ),
            ],
          )
        ],
      ],
    );
  }
}
