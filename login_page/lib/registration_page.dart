import 'package:flutter/material.dart';
import 'package:login_page/components/my_button.dart';
import 'package:login_page/components/my_textfield.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({Key? key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void registerUser() {
    String name = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;

    // Validate password length
    if (password.length > 12) {
      // Password exceeds the character limit (12 characters)
      // Handle this case (e.g., show an error message)
      return;
    }

    // Check if the password matches the confirmed password
    if (password != confirmPassword) {
      // Passwords do not match
      // Handle this case (e.g., show an error message)
      return;
    }

    // Registration logic here (e.g., call an API to register the user)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 50),

                // Registration header
                Text(
                  'Create an Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 30),

                // Name text field
                MyTextField(
                  controller: nameController,
                  hintText: 'Name',
                  obscureText: false,
                ),

                const SizedBox(height: 15),

                // Email/Username text field
                MyTextField(
                  controller: emailController,
                  hintText: 'Email/Username',
                  obscureText: false,
                ),

                const SizedBox(height: 15),

                // Password text field
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password (max 12 characters)',
                  obscureText: true,
                ),

                const SizedBox(height: 15),

                // Confirm Password text field
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),

                const SizedBox(height: 30),

                // Register Button
                MyButton(
                  onTap: registerUser,
                  buttonText: 'Register',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
