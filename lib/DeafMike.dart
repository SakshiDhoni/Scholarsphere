import 'package:flutter/material.dart';

class DeafMike extends StatefulWidget {
  const DeafMike({Key? key}) : super(key: key);

  @override
  State<DeafMike> createState() => _DeafMike();
}

class _DeafMike extends State<DeafMike> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late AnimationController _waveController;
  late Animation<double> _waveAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.2,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _waveController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    _waveAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _waveController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _waveController.dispose();
    super.dispose();
  }

  void _startRecording() {
    _controller.forward();
    _waveController.forward(from: 0.0);
  }

  void _stopRecording() {
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deaf Mode'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTapDown: (_) => _startRecording(),
        onTapUp: (_) => _stopRecording(),
        onTapCancel: () => _stopRecording(),
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.scale(
              scale: _scaleAnimation.value,
              child: CustomPaint(
                size: Size(60, 60),
                painter: WaveButtonPainter(
                  waveAnimation: _waveAnimation,
                ),
                child: FloatingActionButton(
                  onPressed: () {}, // Set to an empty function to disable default onPressed behavior
                  backgroundColor: Colors.blue,
                  elevation: 0,
                  child: Icon(Icons.mic, color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 50, bottom: 10, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                '"Tab to speak!" ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WaveButtonPainter extends CustomPainter {
  final Animation<double> waveAnimation;

  WaveButtonPainter({required this.waveAnimation});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    double center = size.width / 2;
    double radius = size.width / 2;

    // Draw the circular button
    canvas.drawCircle(Offset(center, center), radius, paint);

    // Draw the release waves
    paint.color = Colors.blue.withOpacity(0.3 * (1 - waveAnimation.value));
    double waveRadius = radius * waveAnimation.value;
    canvas.drawCircle(Offset(center, center), waveRadius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
