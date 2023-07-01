import 'package:commons/main.dart';
import 'package:commons_dependencies/main.dart';
import 'package:onboarding/main.dart';
import 'package:splash_module/main.dart';
import 'package:welcome_module/main.dart';

class AppModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      Modular.initialRoute,
      module: SplashModule(),
    ),
    ModuleRoute(
      CommonRoutes.oboardingRoute,
      module: OnboardingModule(),
    ),
    ModuleRoute(
      CommonRoutes.initialRoute,
      module: WelcomeModule(),
    ),
  ];
}
