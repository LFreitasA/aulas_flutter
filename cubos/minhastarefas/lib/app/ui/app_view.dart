import 'package:flutter/material.dart';
import 'package:minhastarefas/app/data/todo_model.dart';
import 'package:minhastarefas/app/data/todo_repository.dart';
import 'package:minhastarefas/app/ui/todo_editor.dart';

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final todoRepository = TodoRepository();

  void addTodo(TodoModel todo) {
    setState(() {
      todoRepository.add(todo);
    });
  }

  void removeTodo(int index) {
    setState(() {
      todoRepository.remove(index);
    });
  }

  void setTodoChecked(int index, bool check) {
    setState(() {
      todoRepository.setChecked(index, check);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Minhas Atividades"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => showDialog(
                    context: context,
                    builder: (_) => TodoEditor(
                      onTodoSubmited: addTodo,
                    ),
                  ),
              icon: const Icon(Icons.add)),
        ],
      ),
      body: ListView.builder(
        itemCount: todoRepository.todos.length,
        itemBuilder: (context, index) {
          final todo = todoRepository.todos[index];
          return ListTile(
            title: Text(todo.description),
            leading: Checkbox(
              value: todo.checked,
              onChanged: (value) {
                setTodoChecked(index, value ?? false);
              },
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete_outline),
              onPressed: (() {
                removeTodo(index);
              }),
            ),
          );
        },
      ),
    );
  }
}
