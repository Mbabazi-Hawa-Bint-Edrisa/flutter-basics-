import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basics'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Circular image with border
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://www.shutterstock.com/image-photo/project-managers-work-new-idea-600nw-2343099769.jpg', // Corrected URL
                  ),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.grey,
                  width: 4.0,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Name text in bold and font size 18
            const Text(
              'Mbabazi Hawa Bint Edrisa',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
