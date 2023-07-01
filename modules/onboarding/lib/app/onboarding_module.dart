import 'package:commons_dependencies/main.dart';
import 'package:onboarding/app/pages/onboarding_page.dart';

class OnboardingModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) {
        return const OnboardingPage();
      },
    )
  ];
}
