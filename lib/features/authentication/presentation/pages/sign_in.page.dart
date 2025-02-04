import 'package:goods_mobile_app/common/widgets/text_field/custom_text_field.dart';
import 'package:goods_mobile_app/common_libs.dart';
import 'package:goods_mobile_app/features/authentication/presentation/widgets/auth_header.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isUsernameValid = false;
  bool _isPasswordValid = false;
  String? _usernameError;
  String? _passwordError;

  void _validateUsername(String value) {
    setState(() {
      if (value.isEmpty) {
        _isUsernameValid = false;
        _usernameError = 'Username field cannot be empty';
      } else {
        _isUsernameValid = true;
        _usernameError = null;
      }
    });
  }

  void _validatePassword(String value) {
    setState(() {
      if (value.isEmpty) {
        _isPasswordValid = false;
        _passwordError = 'Password field cannot be empty';
      } else {
        _isPasswordValid = true;
        _passwordError = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AuthHeader(
                headerText: 'Welcome',
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 42),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomTextField(
                        label: 'User Name',
                        controller: _usernameController,
                        onChanged: _validateUsername,
                        isValid: _isUsernameValid,
                        errorText: _usernameError,
                        placeholder: 'your user name',
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        label: 'Password',
                        controller: _passwordController,
                        onChanged: _validatePassword,
                        isValid: _isPasswordValid,
                        errorText: _passwordError,
                        isPassword: true,
                        placeholder: 'your password',
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Forgot Password?',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                      color: AppColors.textBlue,
                                      decoration: TextDecoration.underline),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryBlack,
                          foregroundColor: AppColors.primaryWhite,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: const Size.fromHeight(50),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
