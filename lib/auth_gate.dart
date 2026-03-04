import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'pages/login_page.dart';
// Add this import:
import 'screens/main/main_screen.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AuthState>(
      stream: Supabase.instance.client.auth.onAuthStateChange,
      builder: (context, snapshot) {
        final session = snapshot.data?.session;
        if (session != null) {
          // Now MainScreen will be recognized
          return const MainScreen();
        }
        return const LoginPage();
      },
    );
  }
}