import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePageDrawer extends StatefulWidget {
  //final String title;

  //MyHomePageDrawer({required Key key, required this.title}) : super(key: key);

  @override
  _MyHomePageDrawerState createState() => _MyHomePageDrawerState();
}

class _MyHomePageDrawerState extends State<MyHomePageDrawer> {
  int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Row(
      children: [
        Drawer (
          child: ListView(
            // Important: Remove any padding from the ListView.
           padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Admin',
                  style: textTheme.headline6,
                ),

              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              ListTile(
                leading: Icon(Icons.approval),
                title: Text('Profile'),
                selected: _selectedDestination == 0,
                onTap: () => selectDestination(0),
                
              ),
              ListTile(
                leading: Icon(Icons.history_toggle_off),
                title: Text('History'),
                selected: _selectedDestination == 1,
                onTap: () => selectDestination(1),
              ),
              ListTile(
                leading: Icon(Icons.label),
                title: Text('PayCheck'),
                selected: _selectedDestination == 2,
                onTap: () => selectDestination(2),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Data',
                ),
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text('Employee Info'),
                selected: _selectedDestination == 3,
                onTap: () => selectDestination(3),
              ),
              ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text('Salary Info'),
                selected: _selectedDestination == 3,
                onTap: () => selectDestination(3),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                selected: _selectedDestination == 3,
                onTap: () => selectDestination(3),
              ),
            ],
          ),
        ),
        VerticalDivider(
          width: 1,
          thickness: 1,
        ),
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              title: Text("Payroll"),
            ),
            body:   Container(// GridView.count(
              //   crossAxisCount: 2,
              //   crossAxisSpacing: 20,
              //   mainAxisSpacing: 20,
              //   padding: EdgeInsets.all(20),
              //childAspectRatio: 3 / 2,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child:
              Image.asset('/dash.jpg',
                height: 300,
                width: 300,
                fit: BoxFit.cover,

              ),

              // Image.asset('assets/nav-drawer-2.jpg'),
              // Image.asset('assets/nav-drawer-3.jpg'),
              // Image.asset('assets/nav-drawer-4.jpg'),

            ),
          ),
        ),
      ],
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}