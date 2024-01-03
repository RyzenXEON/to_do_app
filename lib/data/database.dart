
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  List toDoList =[];

  //refence box
  final _myBox =Hive.box('mybox');

  //run this if 1st time ever opening app
  void createInitialData(){
    toDoList =[
      ["Add new Tasks",false]
    ];
  }

  //load DB
  void loadData(){
    toDoList =_myBox.get("TODOLIST");
  }

  //update DB
  void updateDataBase(){
    _myBox.put("TODOLIST",toDoList);
  }
}