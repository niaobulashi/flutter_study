import 'package:flutter/material.dart';
import 'package:flutter_07_navigation/DetailScreen.dart';


class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Passing Data',
      home: new TodosScreen(
        todos: new List.generate(
          20, (i) => new Todo(
            'Todo $i',
            'A description of what needs to be done for Todo $i'),
        ),
      ),
    );
  }

}

class TodosScreen extends StatelessWidget {
  final List<Todo> todos;
  TodosScreen({Key key, @required this.todos}) :super(key:key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Todos'),
      ),
      body: new ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return new ListTile(
            title: new Text(todos[index].title),
            // When a user taps on the ListTile, navigate to the DetailScreen.
            // Notice that we're not only creating a new DetailScreen, we're
            // also passing the current todo through to it!
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => new DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
