import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'addEmployee.dart';
import 'allEmp.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Payroll"),
        backgroundColor: Colors.indigo,
      ),
      drawer:Drawer(
        child:ListView(
          children:<Widget> [
            DrawerHeader(
                decoration:BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Colors.lightBlue,Colors.indigo

                    ])
                ),

                child:Container(
                  child: Column(
                    children: <Widget>[
                      // Material(
                      //   borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      //   child: Padding(padding: EdgeInsets.all(0.0),
                      //     child: Image.asset("assets/sa.jpeg",height: 100,width: 100,),),
                      //
                      // ),
                      Text("Payroll Management")
                    ],
                  ),
                ) ),

            Custom(Icons.person, "Profile", (){
              Navigator.pushNamed(context, "employee");

            }),
            Custom(Icons.info, "Job information", (){
              Navigator.pushNamed(context, "job_info");
            }),
            Custom(Icons.access_alarm, "Attendance", (){

            }),
            Custom(Icons.monetization_on_rounded, "Paycheck", (){

            }),
            // ListTile(
            //   leading: Icon(Icons.add_location_alt),
            //   title: Text('Location'),
            //   onTap: () => {Navigator.pushNamed(context,"map")},
            // ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Add Employee '),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => addEmployee()));
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Employee List'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => allEmp()));
              },
            ),
            // Custom(Icons.logout, "Logout", (){
            //
            // }),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () => {Navigator.pushNamed(context, "login")},
            ),







          ],

        ) ,
      ) ,
      body:   Container(// GridView.count(
        //   crossAxisCount: 2,
        //   crossAxisSpacing: 20,
        //   mainAxisSpacing: 20,
        //   padding: EdgeInsets.all(20),
        //childAspectRatio: 3 / 2,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child:
        Image.asset('assets/dash.jpg',
          height: 300,
          width: 300,
          fit: BoxFit.cover,

        ),

        // Image.asset('assets/nav-drawer-2.jpg'),
        // Image.asset('assets/nav-drawer-3.jpg'),
        // Image.asset('assets/nav-drawer-4.jpg'),

      ),
    );
  }
}

class Custom extends StatelessWidget {
  IconData icons;
  String text;
  Function onTap;


  Custom(this.icons, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(

            border: Border(bottom: BorderSide(color: Colors.grey))
        ),
        child: InkWell(
          splashColor:Colors.indigo ,
          onTap: ()=> onTap(),
          child: Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Row(
                    children: <Widget>[
                      Icon(icons),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(text,style: TextStyle(fontSize: 16),),
                      ),

                    ]
                ),
                Icon(Icons.arrow_right)

              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class Home extends StatefulWidget {
//  // const Home({Key? key}) : super(key: key);
//
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//         title: const Text('Drawer Demo'),
//
//     ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: const <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Drawer Header',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.message),
//               title: Text('Employee'),
//             ),
//             ListTile(
//               leading: Icon(Icons.account_circle),
//               title: Text('salary'),
//             ),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('attendance'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
















