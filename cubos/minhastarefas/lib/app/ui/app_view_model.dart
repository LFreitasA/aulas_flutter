import 'package:flutter/foundation.dart';

import '../data/todo_model.dart';
import '../data/todo_repository.dart';

class AppViewModel extends ChangeNotifier {
  final _todoRepository = TodoRepository();
  List<TodoModel> get todos => _todoRepository.todos;

  void addTodo(TodoModel todo) {
    print("teste");
    _todoRepository.add(todo);
    notifyListeners();
  }

  void removeTodo(int index) {
    _todoRepository.remove(index);
    notifyListeners();
  }

  void setTodoCheck(int index, bool check) {
    _todoRepository.setChecked(index, check);
    notifyListeners();
  }
}
