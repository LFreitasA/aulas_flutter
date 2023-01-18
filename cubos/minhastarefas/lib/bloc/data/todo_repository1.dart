import 'todo_model1.dart';

class TodoRepository1 {
  final List<TodoModel1> _todoList = [
    TodoModel1(
      'Limpar casa',
    ),
  ];

  List<TodoModel1> get todos => [..._todoList];

  void add(TodoModel1 todo) {
    //void add(TodoModel1 todo)
    _todoList.add(todo);
  }

  void remove(int index) {
    _todoList.removeAt(index);
  }

  void setChecked(int index, bool check) {
    _todoList[index] = _todoList[index]..checked = check;
  }
}
