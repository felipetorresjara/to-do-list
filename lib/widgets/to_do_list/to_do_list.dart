import 'package:daily_list/controllers/list_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

final Map<int, Color> colorsIcon = {
  3: const Color(0xFFDC183A),
  2: const Color(0xFFFFAB1E),
  1: const Color(0xFF1E90FF)

};

class _ToDoListState extends State<ToDoList> {
  final listCtr = Get.find<ListController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Obx(
        () =>  ListView(
          shrinkWrap: true,
          children: [
            ...listCtr.taskList.value.tasks.map((task) => 
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF333333),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                margin: const EdgeInsets.only(bottom: 10),
                child: Slidable(
                    endActionPane: ActionPane(
                      motion: const DrawerMotion(),
                      children: [
                          SlidableAction(
                            autoClose: true,
                            flex: 1,
                            onPressed: (value) {
                              listCtr.deleteTask(listCtr.taskList.value.tasks.indexOf(task));
                            },
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Eliminar',
                          ),
                          SlidableAction(
                            autoClose: true,
                            flex: 1,
                            onPressed: (value) {
                              listCtr.addToDoneTask(listCtr.taskList.value.tasks.indexOf(task));
                            },
                            borderRadius: const BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                            backgroundColor: const Color(0xFF7FFF62),
                            foregroundColor: Colors.white,
                            icon: Icons.check,
                            label: 'Listo',
                          ),
                        ],
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: Color(0xFF333333),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: colorsIcon[task.level],
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Icon(Icons.tornado, color: Colors.white,),
                        ),
                        title: Text(task.title!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                        trailing: task.state == 'done' ? const Icon(Icons.check, color: Color(0xFF7FFF62),) : const Text('-', style: TextStyle(fontSize: 30)),
                      ),
                    ),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}