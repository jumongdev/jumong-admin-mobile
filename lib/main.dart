import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:provider/provider.dart'; // Add this
import 'auth_gate.dart';
import 'controllers/menu_app_controller.dart'; // Add this

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Supabase
  await Supabase.initialize(
      url: 'https://isshdvprjdwtvcxgjldl.supabase.co',
      anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imlzc2hkdnByamR3dHZjeGdqbGRsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjQ3MTAxNTUsImV4cCI6MjA4MDI4NjE1NX0.XBCjtRi9tRr571En8g5JWyyc2v_Ve72RPrJf8UWY3mU'
  );

  // Wrap MyApp with MultiProvider so MainScreen can access MenuAppController
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MenuAppController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Cleaner look for your dashboard
      title: 'Jumong Admin denden',
      theme: ThemeData.dark().copyWith( // Template often looks best in Dark Mode
        scaffoldBackgroundColor: const Color(0xFF212332),
        canvasColor: const Color(0xFF2A2D3E),
      ),
      home: const AuthGate(),
    );
  }
}