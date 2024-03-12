import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  // Create the controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController eventController = TextEditingController();

  // List of events
  final List<String> events = [
    'Quiz',
    'Hackathon',
    'Blind Coding',
    // Add more events as needed
  ];

  String? selectedEvent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registration Page',
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Lato'),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.shiksha.com/mediadata/images/articles/1398182882phpVGC9y8.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.3), // Adjust opacity here
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    controller: nameController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.orange, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.orange, width: 2.0),
                      ),
                      hintText: 'Enter Name',
                      hintStyle: TextStyle(color: Colors.white70),
                      fillColor: Colors.black.withOpacity(0.5),
                      filled: true,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Email',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    controller: emailController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.orange, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.orange, width: 2.0),
                      ),
                      hintText: 'Enter Email Address',
                      hintStyle: TextStyle(color: Colors.white70),
                      fillColor: Colors.black.withOpacity(0.5),
                      filled: true,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Mobile',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    controller: mobileController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.orange, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.orange, width: 2.0),
                      ),
                      hintText: 'Enter Mobile Number',
                      hintStyle: TextStyle(color: Colors.white70),
                      fillColor: Colors.black.withOpacity(0.5),
                      filled: true,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'College',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    controller: addressController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.orange, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.orange, width: 2.0),
                      ),
                      hintText: 'Enter College Name',
                      hintStyle: TextStyle(color: Colors.white70),
                      fillColor: Colors.black.withOpacity(0.5),
                      filled: true,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Event',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    value: selectedEvent,
                    items: events.map((String event) {
                      return DropdownMenuItem<String>(
                        value: event,
                        child: Text(event),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      selectedEvent = value;
                      // You can use the selected event here if needed
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.orange, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.orange, width: 2.0),
                      ),
                      hintText: 'Select Event',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(201, 255, 255, 255)),
                      fillColor: Colors.black.withOpacity(0.5),
                      filled: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      print(nameController.text);
                      print(emailController.text);
                      print(mobileController.text);
                      print(addressController.text);
                      print(selectedEvent);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 0, 1, 1)),
                    ),
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

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration Form',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: RegisterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
