import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Neumorphism Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: "Neumorphism"), // Home screen widget
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar setup
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Center(
        child: Container(
          // Container that holds the neumorphism UI element
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.inversePrimary,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              // Neumorphism shadows - light shadow for "raised" effect
              BoxShadow(
                blurRadius: 15.0,
                color: Colors.white, // Light shadow color
                offset: Offset(
                    -4.0, -4.0), // Shadow offset to create the "inset" effect
                spreadRadius: 1.0, // Spread of the shadow
              ),
              // Neumorphism shadows - dark shadow for depth
              BoxShadow(
                blurRadius: 15.0,
                color: Colors.black38, // Dark shadow color
                offset: Offset(4.0, 4.0), // Shadow offset for depth
                spreadRadius: 1.0, // Spread of the shadow
              ),
            ],
          ),
          child: Icon(
            // Icon placed inside the neumorphism container
            Icons.flutter_dash_rounded,
            size: MediaQuery.of(context).size.width * 0.3,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
      ),
    );
  }
}
