// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/compnent/dialog_box.dart';
import 'package:todo/compnent/todo_title.dart';
import 'package:todo/data/database.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  //refrence data base
  final _myBox = Hive.box('toDoDb');
  ToDoDataBase db = ToDoDataBase();
  TextEditingController name = TextEditingController();

  void initState() {
    if (_myBox.get("TODOLIST") == null) {
      db.createinitalToDo();
    } else {
      db.loadData();
    }
    super.initState();
  }

  //checkbox task
  checkChange(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateData();
  }

  //crate new task
  createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          name: name,
          save: onSave,
          cancel: oncancel,
        );
      },
    );
  }

  //delete task
  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateData();
  }

  clear() {
    name.clear();
  }

  void onSave() {
    setState(() {
      if (name.text.isNotEmpty) {
        db.toDoList.add([name.text, false]);
        clear();
      }
    });
    Navigator.pop(context);
    db.updateData();
  }

  void oncancel() {
    clear();
    Navigator.pop(context);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text("TO DO"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTitle(
            taskname: db.toDoList[index][0],
            taskcomplete: db.toDoList[index][1],
            onchange: (value) => checkChange(value, index),
            onDelete: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}
