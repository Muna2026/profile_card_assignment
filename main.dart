import 'package:flutter/material.dart';

void main() => runApp(const ProfileApp());

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',
      theme: ThemeData(useMaterial3: true),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('mainScaffold'),
      appBar: AppBar(title: const Text('My Profile')),
      body: Center(
        child: Column(
          key: const Key('profileColumn'),
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO 1: Adding my photo
            ClipOval(
  child: Image.asset(
    'assets/profile.jpg',
    key: const Key('profileImage'),
    width: 170,
    height: 170,
    fit: BoxFit.cover,
  ),
),
const SizedBox(height: 22),


            // TODO 2: Adding your info - I USEd KEYS ATTACHED IN THE ASSIGNMENT PDF
            const Text(
  'Name: Sabah Mohamed',
  key: Key('nameText'),
  style: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  ),
),
const SizedBox(height: 10),
const Text(
  'ID: 01404535',
  key: Key('idText'),
  style: TextStyle(fontSize: 18),
),
const SizedBox(height: 10),
const Text(
  'Department: IGSR',
  key: Key('deptText'),
  style: TextStyle(fontSize: 18),
),
const SizedBox(height: 24),



            // TODO 3: Adding Contact Me button
            ElevatedButton(
  key: const Key('contactButton'),
  onPressed: () {
  final snackBar = ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text(
        'Thanks for reaching out! I’ll get back to you soon.',
      ),
      duration: Duration(seconds: 2),
    ),
  );

  snackBar.closed.then((_) {
    if (!context.mounted) return;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ContactScreen(),
      ),
    );
  });
},

  child: const Text('Contact Me'),
),
          ],
        ),
      ),
    );
  }
}

// TODO 4: Creating ContactScreen
class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('contactScreen'),
      appBar: AppBar(
        title: const Text(
          'Contact Me',
          key: Key('contactScreenTitle'),
        ),
      ),
      body: const Center(
        child: Text('Thank you for contacting me!'),
      ),
    );
  }
}


