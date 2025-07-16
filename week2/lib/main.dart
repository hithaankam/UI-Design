import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light, colorSchemeSeed: Colors.purple),
      home: const DefaultTextStyleExample(),
    );
  }
}

class DefaultTextStyleExample extends StatelessWidget {
  const DefaultTextStyleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trying Out defaultTextSample')),
      body: Column(
        children: [
          // Container to wrap the Image with defined size
          Container(
            height: 400, // You can adjust the height of the image here
            width: double.infinity, // Make the container take up the full width
            child: const Image(
              image: AssetImage('/home/c/23wH1A1289/UI-Design/week2/assets/pexels-hsapir-1054655.jpg'),
              fit: BoxFit.cover, // Ensure the image covers the container's space
            ),
          ),
          
          // Add some spacing between the Image and the text
          const SizedBox(height: 20),

          // Container to wrap the text
          Container(
            padding: const EdgeInsets.all(20), // Add padding inside the container
            decoration: BoxDecoration(
              color: Colors.blueAccent.withOpacity(0.2), // Optional background color
              borderRadius: BorderRadius.circular(10), // Optional border radius
            ),
            child: const DefaultTextStyle(
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              child: Center(child: Text('An Elephant')),
            ),
          ),
        ],
      ),
    );
  }
}
