import 'package:flutter_modular/flutter_modular.dart';
import './modules/home/home.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/home',
          child: (context, args) => const HomeView(),
        )
      ];
}
