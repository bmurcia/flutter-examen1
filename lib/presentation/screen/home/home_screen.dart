import 'package:flutter/material.dart';
import 'package:flutter_examen1/presentation/screen/home/widgets/main_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Examen 1 Bryan Murcia'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('Welcome to Flutter News',
                style: TextStyle(fontSize: 25, color: Colors.black)),
            const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.only(),
              child: Image.asset('asset/image/welcome.jpg'),
            ),
          ],
        )),
      ),
      drawer: const MainMenu(),
    );
  }
}