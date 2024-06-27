import 'package:flutter/material.dart';

import 'package:flutter_application_market/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Model(),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyAppA();
  }
}

class MyAppA extends StatefulWidget {
  const MyAppA({super.key});

  @override
  State<MyAppA> createState() => _MyAppAState();
}

class _MyAppAState extends State<MyAppA> {
  String? validatePassword(String value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter valid password you must use !@#\$&*~ and uppercase,number';
      } else {
        return null;
      }
    }
  }

  bool isValidEmail(email) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color.fromARGB(255, 253, 241, 228),
          child: Column(
            children: [
              const SizedBox(
                height: 320,
              ),
              Text(
                'WELCOME',
                style: GoogleFonts.marcellus(
                  textStyle: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      letterSpacing: .5,
                      fontWeight: FontWeight.w900,
                      fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(labelText: 'email'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            } else if (isValidEmail(value)) {
                              return null;
                            } else {
                              return "Check your email";
                            }
                          },
                        ),
                        TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'password'),
                            validator: (value) {
                              return validatePassword(value!);
                            }),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          color: const Color.fromARGB(255, 250, 236, 44),
                          height: 40,
                          width: 140,
                          child: MaterialButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomePage()));
                              }
                            },
                            child: const Text(
                              'Enter',
                              style: TextStyle(
                                color: Color.fromARGB(255, 77, 77, 77),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
