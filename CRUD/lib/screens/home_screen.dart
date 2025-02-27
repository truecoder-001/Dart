import 'package:flutter/material.dart';
import '../services/firestore_service.dart';

class HomeScreen extends StatelessWidget {
  final FirestoreService firestoreService = FirestoreService();
  final TextEditingController taskController = TextEditingController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Manager'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: taskController,
              decoration: InputDecoration(
                labelText: 'Enter Task',
                suffixIcon: IconButton(
                  onPressed: () {
                    if (taskController.text.isNotEmpty) {
                      firestoreService.addTask(taskController.text);
                      taskController.clear();
                    }
                  },
                  icon: Icon(Icons.add),
                ),
              ),
            ),
          ),
          Expanded(
            child: StreamBuilder(
              stream: FirestoreService().getTasks(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                final tasks = snapshot.data!;

                return ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    final task = tasks[index];
                    return ListTile(
                      title: Text(tasks[index].title,
                          style: TextStyle(
                              decoration: task.isCompleted
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none)),
                      leading: Checkbox(
                        value: task.isCompleted,
                        onChanged: (value) {
                          firestoreService.updateTask(task.id, value!);
                        },
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          firestoreService.deleteTask(task.id);
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
