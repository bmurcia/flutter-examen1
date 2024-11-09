import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Examen 1 Bryan Murcia'),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('Welcome to Flutter News',
                style: TextStyle(fontSize: 25, color: Colors.white)),
            const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Image.asset('asset/image/welcome.jpg'),
            ),
          ],
        )),
      ),
    );
  }
}