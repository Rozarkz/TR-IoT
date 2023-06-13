import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oximeter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const VitalDataScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class VitalDataScreen extends StatefulWidget {
  const VitalDataScreen({super.key});

  @override
  _VitalDataScreenState createState() => _VitalDataScreenState();
}

class _VitalDataScreenState extends State<VitalDataScreen> {
  double _bpm = 0;
  double _spo2 = 0;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    final response = await http.get(Uri.parse(
        'https://labp-b8167-default-rtdb.asia-southeast1.firebasedatabase.app/.json'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      setState(() {
        _bpm = double.parse(jsonData['HeartRate'].toString());
        _spo2 = double.parse(jsonData['SpO2'].toString());
      });
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Oximeter App'),
        backgroundColor: Colors.lightGreen,
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: const Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Heart Rate: $_bpm bpm',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            Text(
              'SpO2: $_spo2%',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
