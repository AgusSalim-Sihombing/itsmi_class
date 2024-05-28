import 'package:aplikasi_nonton_id/screen/main_screen.dart';
import 'package:aplikasi_nonton_id/screen/registration_screen.dart';
import 'package:aplikasi_nonton_id/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void _showSnackBar(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
      action: SnackBarAction(
        label: 'Tutup',
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    String? textFormValidators({
      required String? value,
      required String textName,
    }) {
      if (value?.isEmpty == true) {
        return '$textName tidak boleh kosong!';
      } else {
        if (value!.length < 6) {
          return '$textName terlalu pendek!';
        }
      }
      return null;
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 26, 41, 1),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png'),
                const SizedBox(height: 104),
                const Text(
                  'Masuk',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 36),
                TextFieldWidget(
                  hintText: 'Username',
                  icon: Icons.person_2_outlined,
                  controller: usernameController,
                  validator: (value) =>
                      textFormValidators(textName: 'Username', value: value),
                ),
                const SizedBox(height: 16),
                TextFieldWidget(
                  hintText: 'Password',
                  icon: Icons.lock_outline,
                  obscureText: true,
                  controller: passwordController,
                  validator: (value) =>
                      textFormValidators(textName: 'Password', value: value),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text(
                      'Belum Punya Akun?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      child: const Text(
                        'Daftar',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegistrationScreen(),
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: ElevatedButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              _showSnackBar("Berhasil Login");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainScreen(),
                ),
              );
            } else {
              _showSnackBar("Form Tidak Valid");
            }
          },
          child: const Text('Masuk'),
        ),
      ),
    );
  }


}
