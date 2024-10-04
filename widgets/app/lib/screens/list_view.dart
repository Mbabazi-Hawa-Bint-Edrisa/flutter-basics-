import 'package:flutter/material.dart';

class RowLayout extends StatelessWidget {
  const RowLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Widget"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            // Circular Shape 1
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0), // Add spacing between items
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            // Circular Shape 2
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
            // Circular Shape 3
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
            ),
            // Add more shapes as needed
            // Circular Shape 4
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
            ),
            // Circular Shape 5
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: RowLayout(),
  ));
}
