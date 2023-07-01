import 'package:commons/main.dart';
import 'package:commons_dependencies/main.dart';
import 'package:welcome_module/app/pages/welcome_page.dart';

class WelcomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      CommonRoutes.initialRoute,
      child: (context, args) {
        return const WelcomePage();
      },
    )
  ];
}
