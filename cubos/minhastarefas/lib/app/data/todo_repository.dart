import 'todo_model.dart';

class TodoRepository {
  final List<TodoModel> _todoList = [
    TodoModel(
      'Limpar casa',
    ),
  ];

  List<TodoModel> get todos => [..._todoList];

  void add(TodoModel todo) {
    _todoList.add(todo);
  }

  void remove(int index) {
    _todoList.removeAt(index);
  }

  void setChecked(int index, bool check) {
    _todoList[index] = _todoList[index]..checked = check;
  }
}
