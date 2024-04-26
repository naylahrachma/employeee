import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class AddEmployeeScreen extends StatelessWidget{
  final TextEditingController nameController=
      TextEditingController();
  final TextEditingController positionController= TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Employee'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: positionController,
              decoration: InputDecoration(labelText: 'Position'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(onPressed: (){
              addEmployee(context);
            }, child: Text('Add'),
            ),
          ],
        ),
      ),
    )
  }
}