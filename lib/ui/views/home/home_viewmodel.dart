part of "home_view.dart";

class HomeViewModel extends BaseViewModel {
  final List<TaskModel> tasks = [];
}

class TaskModel {
  String title;
  bool isCompleted;

  TaskModel({required this.title, required this.isCompleted});
}
