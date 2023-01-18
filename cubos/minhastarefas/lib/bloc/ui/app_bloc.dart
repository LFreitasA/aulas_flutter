import 'dart:async';

import 'package:minhastarefas/bloc/data/todo_model1.dart';
import 'package:minhastarefas/bloc/data/todo_repository1.dart';

class AppBloc {
  final StreamController<List<TodoModel1>> _controller =
      StreamController.broadcast();

  final _todoRepository = TodoRepository1();

  Stream<List<TodoModel1>> get stream => _controller.stream;

  void addTodo() {
    //TodoModel1 todo
    // _todoRepository.add(todo);
    _controller.add(_todoRepository.todos);
  }

  void removeTodo(int index) {
    _todoRepository.remove(index);
    _controller.add(_todoRepository.todos);
  }

  void setTodoCheck(int index, bool check) {
    _todoRepository.setChecked(index, check);
    _controller.add(_todoRepository.todos);
  }
}
