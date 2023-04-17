import 'package:flutter/material.dart';

class TargetBuilder extends StatelessWidget {
  final String targetData;
  final String draggableData;
  final Color color;
  final Function(String) onAccept;
  final Function(dynamic data) onWillAccept;

  const TargetBuilder({
    super.key,
    required this.targetData,
    required this.draggableData,
    required this.color,
    required this.onAccept,
    required this.onWillAccept,
  });

  @override
  Widget build(BuildContext context) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String?> incoming,
          List<dynamic> rejected) {
        return Container(
          height: 100.0,
          width: 100.0,
          color: targetData == draggableData ? color : Colors.grey,
          child: Center(
            child: Text(
              targetData,
              style: const TextStyle(color: Colors.white, fontSize: 24.0),
            ),
          ),
        );
      },
      onWillAccept: (data) => data == draggableData,
      onAccept: (data) => onAccept(data),
    );
  }
}
