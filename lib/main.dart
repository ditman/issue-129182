import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    final double dpr = MediaQuery.of(context).devicePixelRatio;
    final Color txtColor = dpr < 1 ? Colors.red : Colors.green;

    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              dpr < 1 ? 'Behold!' : 'Zoom Out until DPR < 1',
              style: TextStyle(fontSize: 32, color: txtColor),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Color(0xFF37AA21),
              const Color(0xFFAE1919),
              const Color(0xFF2533A9),
              const Color(0xFFE7F908),
              const Color(0xFF98129E),
            ]
                .map(
                  (color) => Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: color,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 100),
          Container(
            width: double.infinity,
            height: 100,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF4B39EF),
                  Color(0xFFF6F6F6),
                  Color(0xFF673AB7),
                  Color(0xFF09C939),
                  Color(0xFF590721)
                ],
                stops: [0, 0.2, 0.4, 0.6, 1],
                begin: AlignmentDirectional(1, 0),
                end: AlignmentDirectional(-1, 0),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100, bottom: 5),
                child: Text(
                  'Current Device Pixel Ratio:',
                  style: TextStyle(fontSize: 32),
                ),
              ),
              Text(
                dpr.toStringAsFixed(4),
                style: TextStyle(fontSize: 24, color: txtColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
