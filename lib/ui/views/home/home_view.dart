import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
part 'home_view_components.dart';
part 'home_viewmodel.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    {
      final textController = TextEditingController();
      return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            body: SafeArea(
                child: Column(
              children: [
                const Center(
                  child: Text(
                    "Todo App",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: textController,
                        decoration: const InputDecoration(
                          hintText: "Add a task",
                        ),
                        onSubmitted: (value) {
                          final value = textController.value;
                          model.tasks.add(
                              TaskModel(title: value.text, isCompleted: false));
                          model.notifyListeners();
                        },
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Tasks",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TaskList(),
              ],
            )),
          );
        },
      );
    }
  }
}
