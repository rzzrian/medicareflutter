import 'package:flutter/material.dart';
import 'login_activity.dart'; // Ganti dengan path file LoginActivity Anda
import 'package:shared_preferences/shared_preferences.dart'; // Untuk SharedPreferences

class SignupActivity extends StatefulWidget {
  @override
  _SignupActivityState createState() => _SignupActivityState();
}

class _SignupActivityState extends State<SignupActivity> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  late SharedPreferences _prefs;

  @override
  void initState() {
    super.initState();
    _initSharedPreferences();
  }

  // Inisialisasi SharedPreferences
  _initSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Fungsi untuk mendaftar
  void _registerUser() async {
    final username = _usernameController.text.trim();
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (username.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
      final registeredUsers = _prefs.getStringList('registered_users') ?? [];

      if (registeredUsers.contains(username)) {
        // Pengguna sudah terdaftar
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Username sudah terdaftar. Silakan login.')),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginActivity()),
        );
      } else {
        // Daftar pengguna baru
        _register(username, email, password);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Pendaftaran berhasil')),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginActivity()),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Semua kolom harus diisi')),
      );
    }
  }

  // Fungsi untuk menyimpan data pengguna
  void _register(String username, String email, String password) {
    final registeredUsers = _prefs.getStringList('registered_users') ?? [];
    registeredUsers.add(username);
    _prefs.setStringList('registered_users', registeredUsers);
    _prefs.setString('username', username);
    _prefs.setString('email', email);
    _prefs.setString('password', password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Logo Image
              Image.asset(
                'assets/images/logo.png', // Path ke gambar logo
                width: 343,
                height: 264,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 24),

              // Create your account text
              Text(
                'Create Your Account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF333333),
                ),
              ),
              SizedBox(height: 16),

              // Welcome text
              Text(
                'Welcome! Please create an account.',
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xFF333333),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),

              // Username Input
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  hintText: 'Username',
                  filled: true,
                  fillColor: Color(0xFFCCCCCC),
                  contentPadding: EdgeInsets.all(12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Email Input
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email Address',
                  filled: true,
                  fillColor: Color(0xFFCCCCCC),
                  contentPadding: EdgeInsets.all(12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Password Input
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Color(0xFFCCCCCC),
                  contentPadding: EdgeInsets.all(12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 24),

              // Signup Button
              ElevatedButton(
                onPressed: _registerUser,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4CAF50), // Button Color
                  fixedSize: Size(341, 60),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 16),

              // Already have an account Text
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginActivity()),
                  );
                },
                child: Text(
                  'Already have an account? Login',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
