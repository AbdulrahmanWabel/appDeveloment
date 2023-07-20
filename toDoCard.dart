import 'package:flutter/material.dart';
import 'package:fourth_practice/main.dart';
import 'package:fourth_practice/colors.dart';
import 'package:fourth_practice/toDo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo toDo;
  final onChange;
  final onDelete;
  ToDoItem(
      {Key? key,
      required this.toDo,
      required this.onChange,
      required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onChange(toDo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: Icon(
          toDo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: secondaryColor,
        ),
        title: Text(
          toDo.todoText!,
          style: TextStyle(
              fontSize: 16,
              color: bgColor2,
              decoration: toDo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {
              onDelete(toDo.id);
            },
            icon: Icon(
              Icons.delete,
              size: 15,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
