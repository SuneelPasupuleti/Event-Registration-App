import 'package:flutter/material.dart';
import 'signup.dart'; // Import the signup page

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Stack(
        children: [
          // Background Image
          Image.network(
            'https://storage.googleapis.com/pai-images/3361efc20ac14bee87cf5252b7d4f5f0.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Centered Content
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Circular User Icon
                  CircleAvatar(
                    radius: 50,
                    backgroundColor:
                        const Color.fromARGB(255, 255, 0, 0).withOpacity(0.8),
                    child: const Icon(
                      Icons.person_add_alt_1_sharp,
                      size: 60,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Login',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: const Color.fromARGB(255, 5, 0, 0),
                        ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: const TextStyle(color: Colors.white),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red, // Highlight border color
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red, // Highlight border color
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red, // Highlight border color
                        ),
                      ),
                      fillColor:
                          Colors.black.withOpacity(0.3), // Highlight text box
                      filled: true,
                      // Add controller if needed
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ), // Add user icon
                    ),
                    style: const TextStyle(
                        color: Colors.white), // Highlight text color
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.white),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red, // Highlight border color
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red, // Highlight border color
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red, // Highlight border color
                        ),
                      ),
                      fillColor:
                          Colors.black.withOpacity(0.3), // Highlight text box
                      filled: true,
                      // Add controller if needed
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ), // Add lock icon
                    ),
                    style: const TextStyle(
                        color: Color.fromARGB(
                            255, 255, 255, 255)), // Highlight text color
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Perform login logic here
                      // For now, navigate to the signup page
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 255, 7, 7), // Background color
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          // Navigate to the sign-up screen
                          // Here you can navigate to another screen for sign up
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SignupPage(title: 'Sign Up Page')),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
