import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
 final int index;
 DetailsPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),

      ),
      body: Center(child: Text('Frequent data#$index'),),
    );
  }
}
