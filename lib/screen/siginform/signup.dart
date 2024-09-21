import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup Form'),
      ),
     
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          
          children: <Widget>[
            Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 5),
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
            child: Image.network(
              'https://cdn-icons-png.flaticon.com/512/2766/2766161.png',
              height: 100,
            ),
          ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Full Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email Address ',
                ),
                obscureText: true,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Comfirom Password',
                ),
                obscureText: true,
              ),
            ),
            Container(
              height: 56,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              margin: const EdgeInsets.fromLTRB(0, 16, 0, 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 4, 175, 75),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onPressed: () {},
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(width: 15),
              TextButton.icon(
                onPressed: () {},
                // icon: const Icon(
                //   Icons.facebook,
                //   color: Color.fromARGB(255, 5, 163, 231),
                // ),
                label: const Text(
                  'Already have account?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 5, 163, 231),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '---------------------------OR ---------------------------',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 15),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(width: 15),
              TextButton.icon(
                onPressed: () {},
                icon: Image.network(
                  'https://img.icons8.com/fluency/48/000000/google-logo.png',
                  width: 25,
                  height: 25,
                ),
                label: const Text(
                  'Login with Google',
                  style: TextStyle(
                    color: Color.fromARGB(255, 5, 163, 231),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(width: 15),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.facebook,
                  color: Color.fromARGB(255, 5, 163, 231),
                ),
                label: const Text(
                  'Lgoin with facbook',
                  style: TextStyle(
                    color: Color.fromARGB(255, 5, 163, 231),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          ],
        ),
      ),
    );
  }
}