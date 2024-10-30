import 'dart:io';
import 'dart:convert';
import 'task.dart';

class TaskManager {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
    print('Task added.');
  }

  void updateTask(int index, Task task) {
    if (index >= 0 && index < tasks.length) {
      tasks[index] = task;
      print('Task updated.');
    } else {
      print("Invalid index");
    }
  }

  void deleteTask(int index) {
    if (index >= 0 && index < tasks.length) {
      tasks.removeAt(index);
      print('Task deleted.');
    } else {
      print("Invalid index");
    }
  }

  List<Task> getTasks() {
    return tasks;
  }

  List<Task> getCompletedTasks() {
    return tasks.where((task) => task.isCompleted).toList();
  }

  List<Task> getIncompleteTasks() {
    return tasks.where((task) => !task.isCompleted).toList();
  }

  void toggleTaskCompletion(int index) {
    if (index >= 0 && index < tasks.length) {
      tasks[index].isCompleted = !tasks[index].isCompleted;
      print('Task completion status toggled.');
    } else {
      print("Invalid index");
    }
  }

  void saveTasksToFile(String filePath) {
    File file = File(filePath);
    List<Map<String, dynamic>> jsonList = tasks.map((task) => task.toJson()).toList();
    file.writeAsStringSync(jsonEncode(jsonList));
    print('Tasks saved to file.');
  }

  void loadTasksFromFile(String filePath) {
  File file = File(filePath);
  if (file.existsSync()) {
    String content = file.readAsStringSync();
    
    // Check if file content is empty to avoid parsing error
    if (content.isNotEmpty) {
      List<dynamic> jsonList = jsonDecode(content);
      tasks = jsonList.map((json) => Task.fromJson(json)).toList();
      print('Tasks loaded from file.');
    } else {
      print('No tasks to load; file is empty.');
    }
  }
}

  List<Task> searchTasksByTitle(String title) {
    return tasks.where((task) => task.title.contains(title)).toList();
  }
}
