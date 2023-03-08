import 'package:daily_list/controllers/list_controller.dart';
import 'package:daily_list/widgets/to_do_list/new_task.dart';
import 'package:daily_list/widgets/to_do_list/to_do_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final listCtr = Get.put(ListController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          splashRadius: 25,
          padding: const EdgeInsets.all(0),
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white,),
          onPressed: () {},
          highlightColor: const Color(0xFFBC62FF)
        ),
        actions: [
          IconButton(
            iconSize: 30,
            splashRadius: 25,
            onPressed: () {Get.defaultDialog(title: 'Nueva Tarea', backgroundColor: const Color(0xFF333333) ,content: NewTask());},
            icon: const Icon(Icons.add))
        ],
        title: const Text("Progreso diario"),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    shape: const StadiumBorder(),
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFFBC62FF)
                  ),
                  onPressed: (){},
                  child: const Text("Todos")
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    foregroundColor: Colors.grey,
                    //backgroundColor: const Color(0xFFBC62FF)
                  ),
                  onPressed: (){},
                  child: const Text("Listos")
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    foregroundColor: Colors.grey,
                    //backgroundColor: const Color(0xFFBC62FF)
                  ),
                  onPressed: (){},
                  child: const Text("Por hacer")
                )
              ],
            ),
            const Expanded(child: ToDoList())
          ],
        ),
      ),
    );
  }
}