import 'package:flutter/material.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({super.key});

  @override
  State<SignupWidget> createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  bool passwordVisible1 = false;
  bool passwordVisible2 = false;

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void _signUp() {
    final fullName = fullNameController.text;
    final email = emailController.text;
    final password = passwordController.text;
    final confirmPassword = confirmPasswordController.text;

    if (fullName.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill all fields')),
      );
      return;
    }

    if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Passwords do not match')),
      );
      return;
    }

    // Simulate successful signup
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Signup successful!')),
    );
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/logo.png', height: 100), // Replace with your logo
                SizedBox(height: 10),
                Text('Create Account', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Text('Join our community', style: TextStyle(fontSize: 16, color: Colors.grey)),

                SizedBox(height: 20),
                _buildTextField(fullNameController, 'Full Name', Icons.person, false),
                SizedBox(height: 10),
                _buildTextField(emailController, 'Email Address', Icons.email, false),
                SizedBox(height: 10),
                _buildPasswordField(passwordController, 'Password', passwordVisible1, (value) {
                  setState(() {
                    passwordVisible1 = !passwordVisible1;
                  });
                }),
                SizedBox(height: 10),
                _buildPasswordField(confirmPasswordController, 'Confirm Password', passwordVisible2, (value) {
                  setState(() {
                    passwordVisible2 = !passwordVisible2;
                  });
                }),
                SizedBox(height: 20),

                ElevatedButton(
                  onPressed: _signUp,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text('Sign Up', style: TextStyle(fontSize: 16, color: Colors.white)),
                ),

                SizedBox(height: 20),
                Text('Or continue with', style: TextStyle(color: Colors.grey)),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (_) => _buildSocialButton()),
                ),
                SizedBox(height: 20),

                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text('Already have an account? Sign In', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hint, IconData icon, bool isPassword) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }

  Widget _buildPasswordField(TextEditingController controller, String hint, bool visible, Function(bool) toggleVisibility) {
    return TextField(
      controller: controller,
      obscureText: !visible,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(visible ? Icons.visibility : Icons.visibility_off),
          onPressed: () => toggleVisibility(!visible),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }

  Widget _buildSocialButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.black.withOpacity(0.1),
        child: Icon(Icons.circle, color: Colors.grey),
      ),
    );
  }
}
