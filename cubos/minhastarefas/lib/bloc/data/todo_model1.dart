class TodoModel1 {
  final String description;
  bool checked;

  TodoModel1(
    this.description,
  ) : checked = false;

  bool get isValid => description.length > 3;
}
