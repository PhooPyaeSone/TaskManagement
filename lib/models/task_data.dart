import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(title: 'To go to the market'),
    Task(title: 'To make some foods'),
    Task(title: 'Eat them all')
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskLength{
     return _tasks.length;
  }

  void addNewTask(String newTaskTitle){
    final task = Task(title: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTaskDone(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}