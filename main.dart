import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:fourth_practice/toDoCard.dart';
import 'package:fourth_practice/toDo.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ToDoApp(),
  ));
}

class ToDoApp extends StatefulWidget {
  ToDoApp({Key? key}) : super(key: key);

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  final todoList = ToDo.ToDoList();
  List<ToDo> todoSearch = [];
  final textController = TextEditingController();

  @override
  void initState() {
    todoSearch = todoList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
          backgroundColor: mainColor,
          elevation: 0.5,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                color: bgColor2,
                size: 30,
              ),
              Container(
                height: 40,
                width: 40,
                child: Icon(Icons.person, size: 20, color: bgColor),
                decoration: BoxDecoration(
                  color: bgColor2,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          )),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    onChanged: (value) => _handleSearch(value),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(2),
                      prefixIcon: Icon(Icons.search),
                      prefixIconConstraints: BoxConstraints(
                        maxHeight: 20,
                        maxWidth: 25,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 50,
                          bottom: 20,
                        ),
                        child: Text(
                          'Tasks',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                      ),
                      for (ToDo todo in todoSearch)
                        ToDoItem(
                          toDo: todo,
                          onChange: _handleChange,
                          onDelete: _handleDelete,
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                    left: 20,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 0),
                        blurRadius: 10,
                        spreadRadius: 0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                      controller: textController,
                      decoration: InputDecoration(
                    hintText: 'Add A New Task',
                    border: InputBorder.none,
                  )),
                )),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      _handleAdd(textController.text);
                    },
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: secondaryColor,
                      minimumSize: Size(60, 60),
                      elevation: 10,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _handleChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _handleDelete(String id) {
    setState(() {
      todoList.removeWhere((item) => item.id == id);
    });
  }

  void _handleAdd(String task) {
    setState(() {
      todoList.add(ToDo(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        todoText: task,
      ));
    });
    textController.clear();
  }

  void _handleSearch(String keyword) {
    List<ToDo> results = [];
    if(keyword.isEmpty)
      results =todoList;
    else
      results = todoList.where((item) => item.todoText!.toLowerCase().contains(keyword.toLowerCase())).toList();
    setState(() {
        todoSearch = results;
    });
  }
}
