import 'dart:convert';

class TasksModel{
  List<TaskModel> tasks = [];

  void joinToList(List<TaskModel> taskList){
    for (var task in taskList) {
      tasks.add(task);
    }
  }

  void addToDone(int index){
    TaskModel doneTask = tasks[index];
    doneTask.state = 'done';
  }

  void deleteTask(int index){
    tasks.removeAt(index);
  }

  String encode()=> json.encode(
    tasks.map((task) => task.toMap()).toList()
  );

  List<TaskModel> decode(String taskList) =>
    (json.decode(taskList) as List<dynamic>)
    .map((item)=> TaskModel(item['level'], item['title'], item['state']))
    .toList();
}

class TaskModel{

  int level;
  String title;
  String state;

  TaskModel(
    this.level,
    this.title,
    this.state
  );

  Map<String, dynamic> toMap() => {
    'level': level,
    'title': title,
    'state': state
  };
}