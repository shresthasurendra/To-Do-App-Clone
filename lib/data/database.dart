import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  //  run this method if app is running for first time
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  // load data from the database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  // update database
  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }
}