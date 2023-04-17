import 'package:flutter/material.dart';

class ContainerBuilder extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final double opacity;
  final String draggableData;

  const ContainerBuilder({
    Key? key,
    required this.draggableData,
    required this.color,
    this.height = 100,
    this.width = 100,
    this.opacity = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color.withOpacity(opacity),
      child: Center(
        child: Text(
          draggableData,
          style: const TextStyle(color: Colors.white, fontSize: 24.0),
        ),
      ),
    );
  }
}
