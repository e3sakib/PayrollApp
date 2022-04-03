import 'dart:collection';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_payrollapp/HomeP.dart';
import 'package:flutter_payrollapp/helper/http_helper.dart';
import 'package:flutter_payrollapp/home.dart';
import 'package:flutter_payrollapp/model/employee_payload.dart';
import 'package:flutter_payrollapp/signup.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payroll"),
      ),
      body: MyLoginPage(),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                "Login Here",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                    labelText: 'password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed: () {

                String email=_emailController.text;
                String password=_passwordController.text;
                EmployeePayload emp=new EmployeePayload(email: email, password: password);

                signIn(emp).then((res) {

                  Map<String,dynamic>map = jsonDecode(res.body);
                  print(map['status']);
                  if(map['status']=="Success"){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Home()));
                  }

                });

              },
              child: Text("Login"),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Row(
                children: [
                  Text('Does not have account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MySingUp()));
                      },
                      child: Text("registration here")),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
