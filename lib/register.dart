import 'package:auto_sales_flutter/login.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(100.0), 
          children: [
          TextFormField(
            
              decoration: InputDecoration(
                hintText: 'UserName',
              labelText: 'UserName',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
              ),
              controller: userNameController,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your UserName';
                } else {
                  return null;
                }
              }),
              SizedBox(
            height: 50.0,
            ),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please set your password';
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: 50.0,
            ),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: 'email@email.com',
                  labelText: 'email@email.com',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
            ),
            validator: (String? value) {
              if (value != null && !EmailValidator.validate(value)) {
                return 'Please enter your email';
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: 30.0,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                print(
                    '${userNameController.text}-${passwordController.text}-${emailController.text}');

                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                    (route) => false);
              }
            },
            child: Text('Sign Up'),
          )
        ]),
      ),
    );
  }
}
