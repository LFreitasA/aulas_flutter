import 'package:flutter/material.dart';
import 'package:minhastarefas/app/data/todo_model.dart';

class TodoEditor extends StatefulWidget {
  const TodoEditor({Key? key, required this.onTodoSubmited}) : super(key: key);

  final ValueChanged<TodoModel> onTodoSubmited;

  @override
  State<TodoEditor> createState() => _TodoEditorState();
}

class _TodoEditorState extends State<TodoEditor> {
  bool _inputInvalid = false;
  set inputInvalid(bool value) => setState((() => _inputInvalid = value));

  final todoEditor = TextEditingController();

  @override
  void dispose() {
    todoEditor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Nova atividade'),
      content: Wrap(
        children: [
          const Text("Descrição"),
          const SizedBox(
            height: 8,
          ),
          TextField(
            controller: todoEditor,
            decoration: InputDecoration(
                errorText: _inputInvalid ? "Descricao invalida" : null),
          )
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancelar")),
        TextButton(
            onPressed: () {
              final todo = TodoModel(todoEditor.text);
              if (todo.isValid) {
                inputInvalid = false;
                widget.onTodoSubmited(todo);
                todoEditor.clear();
                Navigator.pop(context);
              } else {
                inputInvalid = true;
              }
            },
            child: const Text("Adicionar")),
      ],
    );
  }
}
