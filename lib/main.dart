import 'package:flutter/material.dart';

class PersonalInfoScreen extends StatefulWidget {
  @override
  _PersonalInfoScreenState createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  late TextEditingController _usernameController;
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController(text: 'Prayash');
    _emailController = TextEditingController(text: 'prayashji@gaabesi.com');
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _saveChanges() {
    String newUsername = _usernameController.text;
    String newEmail = _emailController.text;

    // Perform your saving logic here, like sending an API request to update the user's information

    // Show a snackbar or toast message to indicate that changes were saved
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Changes saved')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email Address',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _saveChanges,
              child: Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PersonalInfoScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
