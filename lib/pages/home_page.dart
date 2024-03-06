// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:todo/compnent/dialog_box.dart';
import 'package:todo/compnent/todo_title.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  TextEditingController name = TextEditingController();
  //checkbox task
  checkChange(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  List toDoList = [
    ["Make tural", false],
    ["Make bake", false],
  ];

  //crate new task
  createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox();
      },
    );
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
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTitle(
            taskname: toDoList[index][0],
            taskcomplete: toDoList[index][1],
            onchange: (value) => checkChange(value, index),
          );
        },
      ),
    );
  }
}
