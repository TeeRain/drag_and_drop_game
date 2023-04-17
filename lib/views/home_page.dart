import 'package:drag_and_drop_game/views/drag_and_drop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DragAndDropPage(),
              ),
            );
          },
          child: const Text('Go to Drag and Drop game'),
        ),
      ),
    );
  }
}
