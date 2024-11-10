import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ), 
            child: Text("Menu"),
          ),
          ListTile(
            title: const Text("Home"),
            onTap: () {
              context.pop();
            },
          ),
          ListTile(
            title: const Text('Noticias'),
            onTap: () {
              context.push('/news');
            },
          ),
          ListTile(
            title: const Text('Tareas'),
            onTap: () {
              context.push('/tareas');
            },
          ),
        ],
      ),
    );
  }
}