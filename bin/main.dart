import 'dart:io';
import '../lib/task.dart';
import '../lib/task_manager.dart';

void main() {
  TaskManager taskManager = TaskManager();
  const filePath = 'tasks.json';

  taskManager.loadTasksFromFile(filePath);

  while (true) {
    print('\nTask Manager');
    print('1. Add a new task');
    print('2. Update a task');
    print('3. Delete a task');
    print('4. List all tasks');
    print('5. List completed tasks');
    print('6. List incomplete tasks');
    print('7. Toggle task completion');
    print('8. Search tasks by title');
    print('9. Exit');
    stdout.write('Choose an option: ');

    String? choice = stdin.readLineSync();
    switch (choice) {
      case '1':
        stdout.write('Enter title: ');
        String title = stdin.readLineSync()!;
        stdout.write('Enter description:');
        String description = stdin.readLineSync()!;
        taskManager.addTask(Task(title, description));
        break;
      case '2':
        stdout.write('Enter task index to update: ');
        int index = int.parse(stdin.readLineSync()!);
        index -= 1;
        stdout.write('Enter new title: ');
        String newTitle = stdin.readLineSync()!;
        stdout.write('Enter new description: ');
        String newDescription = stdin.readLineSync()!;
        taskManager.updateTask(index, Task(newTitle, newDescription));
        break;
      case '3':
        stdout.write('Enter task index to delete:');
        int deleteIndex = int.parse(stdin.readLineSync()!);
        deleteIndex -= 1;
        taskManager.deleteTask(deleteIndex);
        break;
      case '4':
        print('\nAll Tasks:');
        taskManager.getTasks().forEach((task) => print(task));
        break;
      case '5':
        print('\nCompleted Tasks:');
        taskManager.getCompletedTasks().forEach((task) => print(task));
        break;
      case '6':
        print('\nIncomplete Tasks:');
        taskManager.getIncompleteTasks().forEach((task) => print(task));
        break;
      case '7':
        stdout.write('Enter task index to toggle completion: ');
        int toggleIndex = int.parse(stdin.readLineSync()!);
        toggleIndex -= 1;
        taskManager.toggleTaskCompletion(toggleIndex);
        break;
      case '8':
        stdout.write('Enter title to search: ');
        String title = stdin.readLineSync()!;
        print('\nSearch Results:');
        taskManager.searchTasksByTitle(title).forEach((task) => print(task));
        break;
      case '9':
        taskManager.saveTasksToFile(filePath);
        print('Exiting...');
        exit(0);
      default:
        print('Invalid option');
    }
  }
}
