import 'package:flutter/material.dart';

class ToDoTitle extends StatelessWidget {
  final String taskname;
  final bool taskcomplete;
  final Function(bool?)? onchange;

  const ToDoTitle(
      {super.key,
      required this.taskname,
      required this.taskcomplete,
      required this.onchange});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            //checkbox
            Checkbox(
              value: taskcomplete,
              onChanged: onchange,
              activeColor: Theme.of(context).colorScheme.background,
            ),
            //task name
            Text(
              taskname,
              style: TextStyle(
                  decoration: taskcomplete
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ],
        ),
      ),
    );
  }
}
