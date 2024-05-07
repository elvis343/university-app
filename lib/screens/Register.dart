import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:university_app/screens/Login.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final SnackBar snackbar = const SnackBar(
    content: Text('Registration Successful!'),
    backgroundColor: Colors.blue,
    padding: EdgeInsets.fromLTRB(0, 0, 0, 2),
  );

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 250,
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.account_circle_sharp,
                  color: Colors.black,
                  size: 75.0,
                ),
                const Text(
                  'Register',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'Enter Email',
                    ),
                  ),
                ),
                // Other TextFields...
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 25, 0, 15),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(180, 50),
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder(),
                      side: BorderSide.none,
                    ),
                    child: const Text('Register'),
                    onPressed: () {
                      // Validate and process registration
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "Already Have An Account? ",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        TextSpan(
                          text: "Login",
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Login(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
