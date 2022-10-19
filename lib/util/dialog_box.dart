import 'package:flutter/material.dart';
import 'package:todoapp/util/buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input

            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Create new task',
              ),
            ),

            // //save and cancel button

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Add Button
                Buttons(text: 'Cancel', onPressed: onCancel),
                // //Cancel Button

                Buttons(text: 'Create', onPressed: onSave),
              ],
            )
          ],
        ),
      ),
    );
  }
}
