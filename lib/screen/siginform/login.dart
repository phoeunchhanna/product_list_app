import 'package:dashboard/screen/app_color.dart';
import 'package:dashboard/screen/dashboard.dart';
import 'package:dashboard/screen/siginform/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //method show password
  bool ispassword = true;
  final txt = FocusNode();
  void togglePassword() {
    setState(() {
      ispassword = !ispassword;
      if (txt.hasPrimaryFocus) return;
      txt.canRequestFocus = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Focus.of(context).unfocus(),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
              child: (Icon(
                Icons.login,
                size: 90,
                color: AppColor.green,
              )),
            ),
            //username
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email or Username',
                    prefix: Icon(
                      Icons.person,
                      size: 30,
                      color: AppColor.green,
                    )),
              ),
            ),
            //password
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: ispassword,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Password',
                    prefix: const Icon(
                      Icons.lock,
                      size: 30,
                      color: AppColor.green,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 4, 0),
                      child: GestureDetector(
                        onTap: togglePassword,
                        child: Icon(
                          ispassword
                              ? Icons.visibility_rounded
                              : Icons.visibility_off_rounded,
                          size: 32,
                          color: AppColor.green,
                        ),
                      ),
                    )),
              ),
            ),
            //login button
            Container(
              height: 56,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              margin: const EdgeInsets.fromLTRB(0, 16, 0, 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 2, 95, 41),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.922)),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()),
                      (route) => false);
                },
              ),
            ),

            Container(
              height: 56,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              margin: const EdgeInsets.fromLTRB(0, 16, 0, 20),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  'Forgot password ?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 0, 43),
                    fontSize: 16,
                  ),
                ),
                onPressed: () {},
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Does note have an acount?',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  width: 15,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Signup()));
                  },
                  child: const Text(
                    'Sing up',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 0, 85),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
