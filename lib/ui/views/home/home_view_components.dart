part of "home_view.dart";

class TaskList extends ViewModelWidget<HomeViewModel> {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Expanded(
      child: ListView.builder(
        itemCount: viewModel.tasks.length,
        itemBuilder: (context, index) {
          final task = viewModel.tasks[index];
          return ListTile(
            title: Text(task.title),
            trailing: Checkbox(
              value: task.isCompleted,
              onChanged: (value) {},
            ),
          );
        },
      ),
    );
  }
}
