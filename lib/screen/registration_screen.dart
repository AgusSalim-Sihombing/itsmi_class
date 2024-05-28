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
              Image.asset('assets/images/logo.png'),
              const SizedBox(height: 104),
              const Text(
                "Daftar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextFieldWidget(
                hintText: "Alamat Email",
                icon: Icons.email,
              ),
              TextFieldWidget(
                hintText: "Username",
                icon: Icons.person_2_outlined,
              ),
              TextFieldWidget(
                hintText: "Password",
                icon: Icons.lock,
              ),
              TextFieldWidget(
                hintText: "Ulangi Password",
                icon: Icons.lock,
              ),
              Row(
                children: [
                  const Text(
                    "Belum Punya Akun?",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      "Daftar",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegistrationScreen(),
                        ),
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
