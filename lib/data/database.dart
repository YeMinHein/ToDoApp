import 'package:hive_flutter/adapters.dart';

class ToDoDataBase {
  List toDoList = [];
//refrence data base

  final _myBox = Hive.box('toDoDb');

  void createinitalToDo() {
    toDoList = [];
  }

  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  void updateData() {
    _myBox.put('TODOLIST', toDoList);
  }
}
