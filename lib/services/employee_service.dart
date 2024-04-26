import 'package:firebase_database/firebase_database.dart';

class EmployeeService{
  final DatabaseReference_employeeRef=
  FirebaseDatabase.instance.reference().child('employees');

  Future<void>addEmployee(String name, String position) async{
    try{
      await_employeeRef.push().set({
        'name':name,
        'position': position,
      });
    }catch(error){
    }
  }
}