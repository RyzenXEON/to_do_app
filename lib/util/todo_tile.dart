import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? change;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName, 
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
    required this.change,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0,right: 25,top: 25),
      child: Slidable(
        startActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
            onPressed: change,
            icon: Icons.check,
            backgroundColor: Colors.green,
            borderRadius: BorderRadius.circular(12),),
        ]),

        endActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
            onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.red,
            borderRadius: BorderRadius.circular(12),
            ),
        ]),
        child: Container(
          padding: EdgeInsets.all(24),
          child: Row(
            children: [
              //chechbox
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.black,
                ),
        
              //task name
              Text(
                taskName,
                style: TextStyle(decoration: taskCompleted? TextDecoration.lineThrough : TextDecoration.none),
                ),   
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(15)),
            
        ),
      ),
    );
  }
}