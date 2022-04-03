import 'dart:convert';
import 'dart:core';
import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';

import 'package:flutter_payrollapp/model/employee.dart';

import 'details.dart';
import 'helper/constant.dart';
import 'helper/http_helper.dart';

class allEmp extends StatefulWidget {
  const allEmp({Key? key}) : super(key: key);

  @override
  State<allEmp> createState() => _allEmpState();
}

class _allEmpState extends State<allEmp> {
  List<dynamic> emplist = [];


  @override
  void initState() {
    allEmployee();



    super.initState();
  }



  void allEmployee() async{
    getAllEmployee().then((res) {
      Map<String, dynamic> map = jsonDecode(res.body);
      var data = map['data'] as List<dynamic>;
      emplist = data.map((e) => Employee.fromMap(e)).toList();
      print(emplist);
      setState(() {});
    });
  }




  // void allEmployee() async {
  //   try {
  //     final res = await post(Uri.parse(getAllEmployeeApi));
  //     final jsonData = jsonDecode(res.body) as List;
  //     emplist =  jsonData.map((e) => Employee.fromMap(e)).toList();
  //
  //     setState(() {
  //       // product_list = jsonData;
  //     });
  //   } catch (err) {}
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("All Employee List"),
    ),
      body: _buildListView(),
    );
  }
  ListView _buildListView(){
    return ListView.builder(
        itemCount: 12,
        itemBuilder:(_,index){
      return ListTile(
        title : Text('Employee Name : #$index'),
        subtitle: Text('View details'),
        trailing: Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailsPage(index)));
          }
      );
    },
    );
  }



}

