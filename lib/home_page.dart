import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
      title: Text(
        'Home',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.person,
          size: 100,
        ),
        SizedBox(
          height: 20,
        ),
        Text('Selamat Datang'),
        SizedBox(
          height: 20,
        ),
        Text('${args['email']}'),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Keluar'))
      ],
    ),
    ),
    );
  }
}
