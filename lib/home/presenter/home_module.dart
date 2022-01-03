import 'package:flutter_modular/flutter_modular.dart';
import 'package:social_login/home/ui/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, arg) => const HomePage()),
      ];
}
