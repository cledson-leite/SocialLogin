import 'package:flutter_modular/flutter_modular.dart';
import 'package:login_midias_sociais/home/ui/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, arg) => const HomePage()),
      ];
}
