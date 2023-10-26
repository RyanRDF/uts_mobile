import 'package:flutter/material.dart';
import 'package:uts_mobile_01/comps/button.dart';
import 'package:uts_mobile_01/comps/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Image.asset(
                'lib/img/flutter-review-removebg-preview.png',
                width: 300,
                height: 200,
              ),

              const SizedBox(height: 30),

              //Username
              TextFields(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              TextFields(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password ?',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 10),

              Button(onTap: signIn),
            ],
          ),
        ),
      ),
    );
  }

  signIn() {}
}
