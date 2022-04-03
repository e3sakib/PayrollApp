import 'dart:convert';

import 'package:flutter_payrollapp/model/employee.dart';
import 'package:flutter_payrollapp/model/employeeModel.dart';
import 'package:flutter_payrollapp/model/employee_payload.dart';

 import 'package:http/http.dart' as http;


import '../model/employee.dart';
import 'constant.dart';

Map<String, String> requestHeaders = {
  'Content-type': 'application/json',
};

 Future<http.Response> signUp(Employee employee) async {
   final response = await http.post(Uri.parse(registerApi),
       headers: requestHeaders, body: jsonEncode(employee.toMap()));

  return response;

 }

Future<http.Response> signIn(EmployeePayload employee) async {
  final response = await http.post(Uri.parse(loginApi),
      headers: requestHeaders, body: jsonEncode(employee.toMap()));
  return response;

}


Future<http.Response> getAllEmployee() async {
  final response = await http
      .post(Uri.parse(getAllEmployeeApi));
  return  response;


}
Future<http.Response> addEmp([employeeModel? empModel]) async {
  final response = await http
      .post(Uri.parse(saveEmployeeApi),
  headers: requestHeaders, body: jsonEncode(empModel?.toMap()));
  return response;
}


// Future<http.Response> getTotalInfo() async {
//   final response = await http.get(Uri.parse(totalInfoApi),
//       headers: requestHeaders);
//   return response;
//
// }