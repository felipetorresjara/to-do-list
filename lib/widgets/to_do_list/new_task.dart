import 'package:daily_list/controllers/list_controller.dart';
import 'package:daily_list/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewTask extends StatefulWidget {
  const NewTask({super.key});

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  final titleController = TextEditingController();
  int _priority = 1;
  final listCtr = Get.find<ListController>();
  bool isValid = true;
  void addTask(){
    if(titleController.text.isNotEmpty){
      listCtr.addTask(TaskModel(_priority, titleController.text, 'pending'));
      Get.back();
    }
    else{
      setState(() {
        isValid = false;       
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(!isValid) Container(
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 10),
            child: Text("Complete todos los datos", textAlign: TextAlign.center, style: TextStyle(color: Colors.red),)
          ),
          Text('Tarea a realizar', textAlign: TextAlign.start,),
          SizedBox(height: 10,),
          TextField(
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white),
            controller: titleController,
            decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            ),
            onChanged: (value) {
              if(value.isNotEmpty && !isValid){
                setState(() {
                  isValid = true;
                });
              }
            },
          ),
          SizedBox(height: 10,),
          Text("Seleccione prioridad"),
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: const Text('Baja'),
            leading: Radio(
              fillColor: MaterialStateColor.resolveWith((states) => const Color(0xFFBC62FF)),
              value: 1,
              groupValue: _priority,
              onChanged: (int? value) {
                setState(() {
                  _priority = value!;
                });
              },
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: const Text('Media'),
            leading: Radio(
              fillColor: MaterialStateColor.resolveWith((states) => const Color(0xFFBC62FF)),
              value: 2,
              groupValue: _priority,
              onChanged: (int? value) {
                setState(() {
                  _priority = value!;
                });
              },
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: const Text('Alta'),
            leading: Radio(
              fillColor: MaterialStateColor.resolveWith((states) => const Color(0xFFBC62FF)),
              value: 3,
              groupValue: _priority,
              onChanged: (int? value) {
                setState(() {
                  _priority = value!;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  shape: const StadiumBorder(),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red
                ),
                onPressed: (){Get.back();},
                child: const Text("Cancelar")
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  shape: const StadiumBorder(),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFFBC62FF)
                ),
                onPressed:  (){addTask();},
                child: const Text("Agregar")
                ),
             ],
           ),
        ],
      ),
    );
  }
}