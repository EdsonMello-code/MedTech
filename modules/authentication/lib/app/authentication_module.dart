import 'package:authentication/app/pages/login_page.dart';
import 'package:authentication/app/pages/sign_up_page.dart';
import 'package:commons/main.dart';
import 'package:commons_dependencies/main.dart';

class AuthenticationModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      CommonRoutes.initialRoute,
      child: (context, args) {
        return const LoginPage();
      },
    ),
    ChildRoute(
      CommonRoutes.signUpRoute,
      child: (context, args) {
        return const SignUpPage();
      },
    ),
  ];
}
