import 'dart:html';
import 'package:auto_sales_flutter/cars/anunturi_masini.dart';

import 'package:auto_sales_flutter/home.dart';
import 'package:auto_sales_flutter/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController userControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(padding: EdgeInsets.all(100.0), children: [
          Text('Login'),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person),
              hintText: 'UserName',
              labelText: 'UserName',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
            ),
            controller: userControler,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your UserName';
              }
              return null;
            },
          ),
          SizedBox(
            height: 50.0,
          ),
          TextFormField(
            obscureText: true,
            controller: passwordControler,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.password),
              hintText: 'Password',
              labelText: 'Password',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password!';
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: 100.0,
          ),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print(' ${userControler.text}-${passwordControler.text}');

                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Anunturi()),
                        (route) => false);
                  }
                },
                child: Text('Log in'),
              ),
              SizedBox(
                width: 50.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const Register()),
                      (route) => false);
                },
                child: Text('Sign up'),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
