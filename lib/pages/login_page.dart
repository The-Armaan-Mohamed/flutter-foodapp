import 'package:flutter/material.dart';
import 'package:foodapp/components/my_button.dart';
import 'package:foodapp/components/my_textfield.dart';
import 'package:foodapp/services/auth/auth_service.dart';
import 'package:foodapp/themes/light_mode.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Text editing controllers
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  // login method
  void login() async {
    /*

    fill out authentication

    */

    // get instance of the auth service
    final authService = AuthService();

    // try sign in
    try {
      await authService.signInWithEmailPassword(
        emailController.text,
        passwordController.text,
      );
    }

    // display any errors
    catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            e.toString(),
          ),
        ),
      );
    }

    // navigate to home page
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => const HomePage(),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: lightMode,
      home: Scaffold(
        //backgroundColor: Theme.of(context).colorScheme.surface,

        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 0.14, 0.28, 0.42, 0.57, 0.71, 0.85, 1.0],
              colors: <Color>[
                // Color(0xff1f005c),
                // Color(0xff5b0060),
                // Color(0xff870160),
                // Color(0xffac255e),
                // Color(0xffca485c),
                // Color(0xffe16b5c),
                // Color(0xfff39060),
                // Color(0xffffb56b),
                Color(0xFFDCDCDC),
                Color(0xFFBAC4E7),
                Color(0xFF94AEF1),
                Color(0xFF6498FA),
                Color(0xFF009CFF),
                Color(0xFF00B2EC),
                Color(0xFF00C1C1),
                Color(0xFF0ACA91),
              ],
              tileMode: TileMode.mirror,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo
                Icon(
                  Icons.restaurant_rounded,
                  size: 100,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),

                const SizedBox(height: 25),

                // Message, app slogan
                Text(
                  "The Coves Food Delivary App",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),

                const SizedBox(height: 25),

                // Email textfield
                MyTextfield(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // Password textfield
                MyTextfield(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),

                const SizedBox(height: 25),

                // Sign in button
                MyButton(
                  onTap: login,
                  text: "Sign In",
                ),

                const SizedBox(height: 10),

                // Not a memeber? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Register now",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
