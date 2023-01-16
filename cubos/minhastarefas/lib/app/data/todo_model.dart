class TodoModel {
  final String description;
  bool checked;

  TodoModel(
    this.description,
  ) : checked = false;

  bool get isValid => description.length > 3;
}
