import 'package:drag_and_drop_game/widgets/draggable_builder.dart';
import 'package:drag_and_drop_game/widgets/target_builder.dart';
import 'package:flutter/material.dart';

class DragAndDropPage extends StatefulWidget {
  const DragAndDropPage({super.key});

  @override
  DragAndDropPageState createState() => DragAndDropPageState();
}

class DragAndDropPageState extends State<DragAndDropPage> {
  static const draggable1Data = '1';
  static const draggable2Data = '2';
  String target1Data = 'one';
  String target2Data = 'two';

  bool isDragged1 = false;
  bool isDragged2 = false;

  void reset() {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        transitionDuration: Duration.zero,
        pageBuilder: (_, __, ___) => const DragAndDropPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drag and Drop Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (!isDragged1)
                  const DraggableBuilder(
                    draggableData: draggable1Data,
                    color: Colors.blue,
                  ),
                if (!isDragged2)
                  const DraggableBuilder(
                    draggableData: draggable2Data,
                    color: Colors.green,
                  ),
              ],
            ),
            const SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TargetBuilder(
                  targetData: target1Data,
                  draggableData: draggable1Data,
                  color: Colors.blue,
                  onAccept: (data) {
                    setState(() {
                      target1Data = '1';
                      isDragged1 = true;
                    });
                  },
                  onWillAccept: (data) {
                    return data == '1';
                  },
                ),
                TargetBuilder(
                  targetData: target2Data,
                  draggableData: draggable2Data,
                  color: Colors.green,
                  onAccept: (data) {
                    setState(() {
                      isDragged2 = true;
                      target2Data = '2';
                    });
                  },
                  onWillAccept: (data) {
                    return data == '2';
                  },
                ),
              ],
            ),
            const SizedBox(height: 50.0),
            IconButton(
              onPressed: reset,
              icon: const Icon(Icons.restore),
            ),
          ],
        ),
      ),
    );
  }
}
