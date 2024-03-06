import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/compnent/my_button.dart';
import 'package:todo/compnent/mytextfield.dart';

class DialogBox extends StatelessWidget {
  VoidCallback save;
  VoidCallback cancel;
  TextEditingController name = TextEditingController();
  DialogBox(
      {super.key,
      required this.name,
      required this.save,
      required this.cancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.primary,
      content: Container(
        height: 160,
        child: Column(
          children: [
            Text("New Task"),
            SizedBox(
              height: 10,
            ),
            MyTextField(
              hintText: "Add new task",
              obscureText: false,
              textType: TextInputType.text,
              controller: name,
            ),
            // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //cancel
                MyButton(
                    buttonName: "Cancel",
                    onTap: cancel,
                    height: 30,
                    width: 80,
                    radius: 10,
                    colors: Theme.of(context).colorScheme.tertiary),

                //save
                MyButton(
                    buttonName: "Save",
                    onTap: save,
                    height: 30,
                    width: 80,
                    radius: 10,
                    colors: Theme.of(context).colorScheme.tertiary)
              ],
            )
          ],
        ),
      ),
    );
  }
}
