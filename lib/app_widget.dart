import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'theme/theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Template Flutter',
      theme: CustomTheme.theme,
    ).modular();
  }
}
