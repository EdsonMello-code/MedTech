import 'package:commons/routes/common_routes.dart';
import 'package:commons_dependencies/main.dart';
import 'package:onboarding/app/onboarding_module.dart';
import 'package:splash_module/splash_module.dart';

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
  ];
}
