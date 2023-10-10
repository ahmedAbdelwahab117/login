import 'package:flutter/material.dart';
import 'package:task000/home_screen.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

String? email0;
String? password0;

class _LoginAppState extends State<LoginApp> {
  // const loginApp({super.key});
  bool light = false;
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.person,
                  size: 220,
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "username is null";
                      }
                    },
                    onFieldSubmitted: (email) => (email0 = email),
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email or Username',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    onFieldSubmitted: (password) => {password0 = password},
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                ),
                SwitchListTile(
                    activeColor: Colors.white,
                    activeTrackColor: const Color.fromARGB(255, 5, 236, 13),
                    title: const Text(
                      'Remember Me',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: light,
                    onChanged: (bool value) {
                      setState(() {
                        light = value;
                      });
                    }),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.blue),
                      width: double.infinity,
                      child: TextButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => App01(
                                            eMail: email0!,
                                            password: password0!,
                                          )));
                            }
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ))),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Trouble Logging In?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ));
  }
}
