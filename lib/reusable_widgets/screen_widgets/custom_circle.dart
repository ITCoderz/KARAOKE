import 'package:flutter/material.dart';

class CustomCircle extends StatelessWidget {
  final double height, width, strokeWidth;
  final Color color;

  const CustomCircle(
      {super.key,
      this.width = 75,
      this.height = 75,
      this.strokeWidth = 30,
      required this.color});

  @override
  Widget build(BuildContext context) => Center(
        child: Container(
          color: Colors.transparent,
          width: width,
          height: height,
          child: CustomPaint(
            painter: CirclePainter(
              color: color,
              strokeWidth: strokeWidth,
            ),
          ),
        ),
      );
}

class CirclePainter extends CustomPainter {
  final double strokeWidth;
  final Color color;

  CirclePainter({
    required this.strokeWidth,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      center,
      size.width * 1 / 2,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
