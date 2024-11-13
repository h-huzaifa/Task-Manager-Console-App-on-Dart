# Task Manager Console App

A simple task management system written in Dart. This console-based app allows users to add, update, delete, and retrieve tasks, with support for marking tasks as completed or incomplete. It also includes search functionality and basic file persistence to save tasks.

## Table of Contents

- [Features](#features)
- [Project Structure](#project-structure)
- [Setup and Installation](#setup-and-installation)
- [Usage](#usage)

## Features

- **Add a Task**: Add a new task with a title and description.
- **Update a Task**: Edit a task's title or description.
- **Delete a Task**: Remove a task from the list.
- **Mark Completion**: Toggle a task's completion status.
- **List Tasks**: View all, completed, or incomplete tasks.
- **Search by Title**: Find tasks by title.
- **File Persistence**: Save tasks to a file in JSON format for future sessions.

## Project Structure

The project is organized as follows:
task_manager/ <br>
├── bin/ <br>
│   └── main.dart <br>
├── lib/ <br>
│   ├── task.dart <br>
│   └── task_manager.dart <br>
└── tasks.json <br>

- **`bin/main.dart`**: The entry point of the application with the console interface.
- **`lib/task.dart`**: Contains the `Task` class that defines task properties and JSON handling.
- **`lib/task_manager.dart`**: Contains the `TaskManager` class that handles task operations and file persistence.

## Setup and Installation

### Prerequisites

- Dart SDK: Install the Dart SDK from [Dart’s official website](https://dart.dev/get-dart).
- Visual Studio Code (optional): Install the Dart extension for easy development and debugging.

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/h-huzaifa/task-manager-console-app.git
   cd task-manager-console-app

## Usage
Run the app from the terminal:
```bash
  dart run bin/main.dart
```

### Menu Options
- Add a new task: Follow prompts to enter a title and description.
- Update a task: Enter the index and new details to update an existing task.
- Delete a task: Enter the index to delete a task.
- List tasks: Display all, completed, or incomplete tasks.
- Toggle task completion: Mark a task as completed or incomplete.
- Search by title: Enter keywords to search by title.
- Exit: Save tasks and exit the application.

### Persistence
Tasks are saved to a tasks.json file in JSON format. When the app starts, it loads any tasks from this file, preserving your task list across sessions.

### Example
When you run the app, you will see a menu like this:
[Task Manager Screenshot](assets/Screenshot1.png)
