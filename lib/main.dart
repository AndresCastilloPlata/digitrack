import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const DigiTrackApp()));
}

class DigiTrackApp extends StatelessWidget {
  const DigiTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DigiTrack',
      theme: ThemeData(primarySwatch: Colors.indigo, useMaterial3: true),
      home: const Scaffold(body: Center(child: Text('DigiTrack App Iniciada'))),
    );
  }
}
