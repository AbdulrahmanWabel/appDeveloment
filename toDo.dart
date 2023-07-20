import 'package:fourth_practice/main.dart';
import 'package:fourth_practice/toDoCard.dart';
class ToDo {
  String? id;
  String? todoText;
  bool isDone;
  ToDo({ required this.id, required this.todoText, this.isDone = false,})

  {}
  static List<ToDo> ToDoList() {
     return [
      ToDo(id: '01', todoText: 'Check Mail', isDone: true),
      ToDo(id: '02', todoText: 'Morning Exercise', isDone: true),
      ToDo(id: '03', todoText: 'Get Groceries'),
      ToDo(id: '04', todoText: 'Self-Learning'),
    ];
   }
}





