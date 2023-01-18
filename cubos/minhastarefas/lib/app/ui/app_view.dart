import 'package:flutter/material.dart';
import 'package:minhastarefas/app/data/todo_model.dart';
import 'package:minhastarefas/app/ui/app_view_model.dart';
import 'package:minhastarefas/app/ui/todo_editor.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = AppViewModel();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Minhas Atividades"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () => showDialog(
                      context: context,
                      builder: (_) => TodoEditor(
                        onTodoSubmited: viewModel.addTodo,
                      ),
                    ),
                icon: const Icon(Icons.add)),
          ],
        ),
        body: AnimatedBuilder(
            animation: viewModel,
            builder: (context, child) {
              return ListView.builder(
                itemCount: viewModel.todos.length,
                itemBuilder: (context, index) {
                  final todo = viewModel.todos[index];
                  return ListTile(
                    title: Text(todo.description),
                    leading: Checkbox(
                      value: todo.checked,
                      onChanged: (value) {
                        viewModel.setTodoCheck(index, value ?? false);
                      },
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete_outline),
                      onPressed: (() {
                        viewModel.removeTodo(index);
                      }),
                    ),
                  );
                },
              );
            }));
  }
}
