import 'package:flutter/material.dart';

import 'helper/http_helper.dart';
import 'home.dart';
import 'model/employeeModel.dart';

class addEmployee extends StatefulWidget {
  const addEmployee( {Key? key}) : super(key: key);

  @override
  State<addEmployee> createState() => _addEmployeeState();
}

class _addEmployeeState extends State<addEmployee> {

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _salaryController = TextEditingController();
  final _addressController = TextEditingController();
  saveEmployee()async {
    String name = _nameController.value.text;

    String phone = _phoneController.value.text;
    String salary = _salaryController.value.text;
    String address = _addressController.value.text;
  var empModel=employeeModel(
      name :name,
      phone:phone,
      salary:salary,
      address:address

  );

    addEmp(empModel).then((res) {
      print(res.body);
    });


  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Employee page"),
        ),
        body:Form(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Text(
                    "Employee Form",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                child: TextFormField(
                  controller: _nameController,
                  // controller: _usernameController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.supervisor_account_sharp,
                        size: 20.0,
                      ),
                      border: UnderlineInputBorder(),
                      labelText: "Name"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                child: TextFormField(
                  controller: _phoneController,
                  // controller: _emailController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.phone,
                        size: 20.0,
                      ),
                      border: UnderlineInputBorder(),
                      labelText: "Phone"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                child: TextFormField(
                  controller: _salaryController,
                  // controller: _salaryController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.monetization_on_rounded,
                        size: 20.0,
                      ),
                      border: UnderlineInputBorder(),
                      labelText: "Salary"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                child: TextFormField(
                  controller: _addressController,
                  // controller: _passwordController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.location_city,
                        size: 20.0,
                      ),
                      border: UnderlineInputBorder(),
                      labelText: "Address"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(30.0),

                child: ElevatedButton(
                    onPressed: () {

                      saveEmployee();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Home()),
                      );
                      // save();
                    },
                    child: Text("submit")),
              ),
            ],
          ),
        ));
  }
}
