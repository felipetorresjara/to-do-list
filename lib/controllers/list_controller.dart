
import 'package:daily_list/models/task_model.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ListController extends GetxController {

  var taskList = TasksModel().obs;

  @override
  void onInit() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tasksString = prefs.getString('tasks');
    print("lista inicial: $tasksString");
    List<TaskModel> initialTasks = tasksString != null ? taskList.value.decode(tasksString!) : [];
    List<TaskModel> initList = [
      TaskModel(3, 'Salir a pesear con mi perro', 'pending'),
      TaskModel(3, 'Ejercitarse durante 1 hora', 'pending'),
      TaskModel(2, 'Leer un libro', 'pending'),
      TaskModel(2, 'Comer a las 11 am', 'done'),
    ];

    taskList.value.joinToList(initialTasks);
    taskList.refresh();
    super.onInit();
  }

  void addTask(TaskModel task) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    taskList.value.joinToList([task]);
    await prefs.setString('tasks', taskList.value.encode());
    taskList.refresh(); //notyfy change class
  }

  void addToDoneTask(int index) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    taskList.value.addToDone(index);
    await prefs.setString('tasks', taskList.value.encode());
    taskList.refresh();
  }

  void deleteTask(int index) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    taskList.value.deleteTask(index);
    await prefs.setString('tasks', taskList.value.encode());
    taskList.refresh();
  }
}