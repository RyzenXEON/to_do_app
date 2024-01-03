import 'package:flutter/material.dart';
import 'package:to_do_app/util/my_Button.dart';

class DialogBox extends StatelessWidget {
  final dynamic controller;

  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
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
              hintText: "Add new Task",
            ),
          ),

          //button save and cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            //save
            MyButton(text: "Save", onPressed: onSave),

            const SizedBox(width: 10,),

            //cancel
            MyButton(text: "Cancel", onPressed: onCancel),
          ],)
        ],),
      ),
    );
  }
}