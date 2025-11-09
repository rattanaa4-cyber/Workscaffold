import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key, required this.title});

  final String title;

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int currentLight = 0;

  void _changeLight() {
    setState(() {
      currentLight = (currentLight + 1) % 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 120,
          height: 450,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedOpacity(
                opacity: currentLight == 0 ? 1.0 : 0.3,
                duration: const Duration(seconds: 1),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              AnimatedOpacity(
                opacity: currentLight == 1 ? 1.0 : 0.3,
                duration: const Duration(seconds: 1),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                    shape: BoxShape.circle,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              AnimatedOpacity(
                opacity: currentLight == 2 ? 1.0 : 0.3,
                duration: const Duration(seconds: 1),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 120.0),
        child: ElevatedButton(
          onPressed: _changeLight,
          child: const Text('เปลี่ยนสี'),
        ),    
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
