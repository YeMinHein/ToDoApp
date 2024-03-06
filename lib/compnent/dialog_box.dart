import 'package:flutter/material.dart';
import 'package:todo/compnent/my_button.dart';
import 'package:todo/compnent/mytextfield.dart';

class DialogBox extends StatelessWidget {
  DialogBox({super.key});
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.primary,
      content: Container(
        height: 150,
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
              children: [
                //cancel
                MyButton(
                    buttonName: "Cancel",
                    onTap: () {},
                    height: 30,
                    width: 100,
                    radius: 10,
                    colors: Theme.of(context).colorScheme.tertiary),

                //save
                MyButton(
                    buttonName: "Save",
                    onTap: () {},
                    height: 30,
                    width: 100,
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
