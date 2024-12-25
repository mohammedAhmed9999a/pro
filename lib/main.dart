import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Typewriter Text Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TypewriterTextPage(),
    );
  }
}

class TypewriterTextPage extends StatefulWidget {
  const TypewriterTextPage({Key? key}) : super(key: key);

  @override
  _TypewriterTextPageState createState() => _TypewriterTextPageState();
}

class _TypewriterTextPageState extends State<TypewriterTextPage> {
  late Timer _timer;
  int _currentTextIndex = 0;
  String _displayedText = "";
  bool _isDeleting = false;
  int _charIndex = 0;

  final List<String> _texts = [
    "I'm a Software Engineer.",
    "I love coding.",
    "Welcome to my portfolio.",
    "Explore my projects.",
  ];

  @override
  void initState() {
    super.initState();
    _startTyping();
  }

  void _startTyping() {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {
        if (_isDeleting) {
          if (_charIndex > 0) {
            _charIndex--;
            _displayedText = _texts[_currentTextIndex].substring(0, _charIndex);
          } else {
            _isDeleting = false;
            _currentTextIndex = (_currentTextIndex + 1) % _texts.length;
          }
        } else {
          if (_charIndex < _texts[_currentTextIndex].length) {
            _charIndex++;
            _displayedText = _texts[_currentTextIndex].substring(0, _charIndex);
          } else {
            _isDeleting = true;
          }
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Typewriter Text Example'),
      ),
      body: Center(
        child: Text(
          _displayedText,
          style: const TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}
