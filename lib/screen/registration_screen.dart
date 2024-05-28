import 'package:aplikasi_nonton_id/screen/login_screen.dart';
import 'package:aplikasi_nonton_id/screen/main_screen.dart';
import 'package:aplikasi_nonton_id/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 26, 41, 1),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              const SizedBox(height: 104),
              const Text(
                'Registrasi',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextFieldWidget(
                hintText: 'Alamat Email',
                icon: Icons.email_outlined,
                controller: TextEditingController(),
              ),
              TextFieldWidget(
                hintText: 'Username',
                icon: Icons.person_2_outlined,
                controller: TextEditingController(),
              ),
              TextFieldWidget(
                hintText: 'Password',
                icon: Icons.lock_outline,
                controller: TextEditingController(),
              ),
              TextFieldWidget(
                hintText: 'Ulangi Password',
                icon: Icons.lock_outline,
                controller: TextEditingController(),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'Sudah punya akun?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    child: const Text(
                      'Masuk',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MainScreen(),
              ),
            );
          },
          child: const Text('Daftar'),
        ),
      ),
    );
  }
}
