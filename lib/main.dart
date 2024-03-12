import 'package:flutter/material.dart';
import 'package:registration_formp/screens/login.dart';
import 'package:registration_formp/screens/registration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Events24',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events24'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Add logic for handling login
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Login'),
                      content: Text('Login to your account.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const LoginPage(title: 'Login'),
                              ),
                            );
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.orange, // Change the background color here
              ),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              EventCard(
                eventName: 'Quiz',
                eventDescription:
                    'Quiz competition is to evaluate the knowledge of the participants within academics as well as beyond academics and to make them familiar with the prospects of quizzes and the objectivity of the questions.',
                imagePath:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDTvcOoqtoeKL8aD_PbQiJms5nf8jbskKwww&usqp=CAU',
              ),
              EventCard(
                eventName: 'Hackathon',
                eventDescription:
                    'A hackathon, also known as a codefest, is a social coding event that brings computer programmers and other interested people together to improve upon or build a new software program.',
                imagePath:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlusQMp0W0jGW6AaRdzB9XFlDFMS4A7xscDbToeP1G98xAhYBwX8a-4IfEym1ydxk7RbQ&usqp=CAU',
              ),
              EventCard(
                eventName: 'Blind Coding',
                eventDescription:
                    'Blind Coding is where a programmer works on code without running it until completion. Normally this is a terrible idea but it makes for a very fun challenge! What level of code do I need to know?.',
                imagePath:
                    'https://i0.wp.com/engineering.tiu.edu.iq/computer/wp-content/uploads/2021/04/Blind-coding-reg.png?fit=1920%2C1080&ssl=1',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String eventName;
  final String eventDescription;
  final String imagePath;

  EventCard({
    required this.eventName,
    required this.eventDescription,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventDetailsPage(
              eventName: eventName,
              eventDescription: eventDescription,
              imagePath: imagePath,
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              imagePath,
              fit: BoxFit.cover,
              height: 200,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    eventName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(eventDescription),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EventDetailsPage extends StatelessWidget {
  final String eventName;
  final String eventDescription;
  final String imagePath;

  EventDetailsPage({
    required this.eventName,
    required this.eventDescription,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(eventName),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              imagePath,
              fit: BoxFit.cover,
              height: 300,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(eventDescription),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Add logic for event registration
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Registration'),
                            iconColor: Colors.orange,
                            content: Text('Register for the events.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegisterPage(),
                                    ),
                                  );
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.orange, // Change the background color here
                    ),
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
