import 'package:commons_dependencies/main.dart';
import 'package:splash_module/app/pages/splash_page.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) {
        return const SplashPage();
      },
    )
  ];
}
