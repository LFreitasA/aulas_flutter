import 'package:flutter/material.dart';
import 'package:minhastarefas/bloc/ui/app_bloc.dart';
import 'package:minhastarefas/bloc/ui/todo_editor.dart';

import '../data/todo_model1.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = AppBloc();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Minhas Atividades"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => showDialog(
                    context: context,
                    builder: (_) =>
                        TodoEditor(onTodoSubmited: bloc.addTodo(todo)),
                  ),
              icon: const Icon(Icons.add)),
        ],
      ),
      body: StreamBuilder<List<TodoModel1>>(
          stream: bloc.stream,
          initialData: const [],
          builder: (context, snapshot) {
            final todos = snapshot.data!;

            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];
                return ListTile(
                  title: Text(todo.description),
                  leading: Checkbox(
                    value: todo.checked,
                    onChanged: (value) {
                      bloc.setTodoCheck(index, value ?? false);
                    },
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete_outline),
                    onPressed: (() {
                      bloc.removeTodo(index);
                    }),
                  ),
                );
              },
            );
          }),
    );
  }
}
