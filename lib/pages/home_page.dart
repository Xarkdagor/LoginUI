import 'package:auth_screen/components/my_button.dart';
import 'package:auth_screen/components/my_textfield.dart';
import 'package:auth_screen/components/square_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final userNameContoller = TextEditingController();
  final passwordContoller = TextEditingController();

  void signUserIn() {}
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              // logo

              const Icon(
                Icons.lock,
                size: 80,
              ),
              const SizedBox(
                height: 30,
              ),

              // welcome back you've been missed
              Text(
                "Welcome back, you've been missed",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              const SizedBox(
                height: 30,
              ),

              MyTextField(
                controller: userNameContoller,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(
                height: 10,
              ),

              // password textfield
              MyTextField(
                controller: passwordContoller,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(
                height: 10,
              ),
              // forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 30,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1.0),
                      child: Text(
                        "Or Continue with",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // google + apple sign in buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google logo
                  SquareTile(
                    imagePath: 'lib/images/google.png',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SquareTile(imagePath: 'lib/images/apple.png')
                ],
              ),
              const SizedBox(
                height: 30,
              ),

              // not a member register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?",
                      style: TextStyle(
                        color: Colors.grey[700],
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Register now",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
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
