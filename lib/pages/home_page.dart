import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Bienvenido a tu lista de tareas", style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(15),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF333333),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Progreso diario", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),
                  Text("Increible, mira todo lo que has logrado😎", style: TextStyle(fontSize: 20, color: Colors.grey),),
                  SizedBox(height: 10,),
                  Text("76%", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: LinearProgressIndicator(
                        value: 0.76,
                        color: Color(0xFFBC62FF),
                        backgroundColor: Color(0xFF7F7F7F),
                        minHeight: 10,
                        
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Text("Tareas completadas", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(15),
                  width: 200,
                  decoration: const BoxDecoration(
                    color: Color(0xFF333333),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Color(0xFF1E90FF),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: const Icon(Icons.tornado, color: Colors.white,),
                      ),
                      const SizedBox(height: 10,),
                      const Text("5 tareas", style: TextStyle(fontSize: 20, color: Colors.grey)),
                      const SizedBox(height: 10,),
                      const Text("Prioridad baja", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 15,),
                      Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 20,
                        children: [
                          const SizedBox(
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: LinearProgressIndicator(
                                value: 0.76,
                                color: Color(0xFF1E90FF),
                                backgroundColor: Color(0xFF7F7F7F),
                                minHeight: 10,
                                
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                            decoration: const BoxDecoration(
                            color: Color(0xFF1E90FF),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                            child: Text("4/5"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(15),
                  width: 200,
                  decoration: const BoxDecoration(
                    color: Color(0xFF333333),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFAB1E),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: const Icon(Icons.tornado, color: Colors.white,),
                      ),
                      const SizedBox(height: 10,),
                      const Text("3 tareas", style: TextStyle(fontSize: 20, color: Colors.grey)),
                      const SizedBox(height: 10,),
                      const Text("Prioridad Media", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 15,),
                      Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 20,
                        children: [
                          const SizedBox(
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: LinearProgressIndicator(
                                value: 0.33,
                                color: Color(0xFFFFAB1E),
                                backgroundColor: Color(0xFF7F7F7F),
                                minHeight: 10,
                                
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                            decoration: const BoxDecoration(
                            color: Color(0xFFFFAB1E),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                            child: Text("1/3"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(15),
                  width: 200,
                  decoration: const BoxDecoration(
                    color: Color(0xFF333333),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Color(0xFFDC183A),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: const Icon(Icons.tornado, color: Colors.white,),
                      ),
                      const SizedBox(height: 10,),
                      const Text("2 tareas", style: TextStyle(fontSize: 20, color: Colors.grey)),
                      const SizedBox(height: 10,),
                      const Text("Prioridad alta", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 15,),
                      Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 20,
                        children: [
                          const SizedBox(
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: LinearProgressIndicator(
                                value: 0.5,
                                color: Color(0xFFDC183A),
                                backgroundColor: Color(0xFF7F7F7F),
                                minHeight: 10,
                                
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                            decoration: const BoxDecoration(
                            color: Color(0xFFDC183A),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                            child: const Text("1/2"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(15),
                  width: 200,
                  decoration: const BoxDecoration(
                    color: Color(0xFF333333),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Color(0xFF7FFF62),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: const Icon(Icons.tornado, color: Colors.white,),
                      ),
                      const SizedBox(height: 10,),
                      const Text("10 tareas", style: TextStyle(fontSize: 20, color: Colors.grey)),
                      const SizedBox(height: 10,),
                      const Text("Total", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 15,),
                      Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 20,
                        children: [
                          const SizedBox(
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: LinearProgressIndicator(
                                value: 0.76,
                                color: Color(0xFF7FFF62),
                                backgroundColor: Color(0xFF7F7F7F),
                                minHeight: 10,
                                
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                            decoration: const BoxDecoration(
                            color: Color(0xFF7FFF62),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                            child: const Text("6/10"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}