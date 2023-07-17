import 'package:flutter/material.dart';
import 'dart:io';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MedicalForm(),
    );
  }
}
class MedicalForm extends StatefulWidget {
  @override
  _MedicalFormState createState() => _MedicalFormState();
}

class _MedicalFormState extends State<MedicalForm> {
  String _firstName = '';
  String _lastName = '';
  String _dateOfBirth = '';
  String _address = '';
  String _phoneNumber = '';
  File? _photo;

  Future<void> _uploadPhoto() async {
    // Ajoutez ici votre logique de téléchargement de photo
    // Vous pouvez utiliser des packages comme `image_picker` pour permettre à l'utilisateur de sélectionner une photo depuis la galerie ou la caméra.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulaire Médical'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Prénom'),
              onChanged: (value) {
                setState(() {
                  _firstName = value;
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Nom'),
              onChanged: (value) {
                setState(() {
                  _lastName = value;
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Date de naissance'),
              onChanged: (value) {
                setState(() {
                  _dateOfBirth = value;
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Adresse'),
              onChanged: (value) {
                setState(() {
                  _address = value;
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Numéro de téléphone'),
              onChanged: (value) {
                setState(() {
                  _phoneNumber = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _uploadPhoto();
              },
              child: Text('Télécharger une photo'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Ajoutez ici le code pour soumettre les informations
              },
              child: Text('Soumettre'),
            ),
          ],
        ),
      ),
    );
  }
}