import 'package:drag_and_drop_game/widgets/container_builder.dart';
import 'package:flutter/material.dart';

class DraggableBuilder extends StatelessWidget {
  final String draggableData;
  final Color color;
  const DraggableBuilder({
    Key? key,
    required this.draggableData,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable<String>(
        data: draggableData,
        feedback: ContainerBuilder(
          draggableData: draggableData,
          color: color,
          opacity: 0.5,
        ),
        child: ContainerBuilder(
          draggableData: draggableData,
          color: color,
        ));
  }
}
