import 'package:components_flutter/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
                title: Text(menuOptions[i].nombre),
                leading: Icon(menuOptions[i].icon),
                onTap: () {
                  Navigator.pushNamed(context, menuOptions[i].route);
                },
              ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
