import 'package:flutter/material.dart';
import 'package:magic_tech_app/controllers/workout_controller.dart';
import  'package:get/get.dart';
import 'package:magic_tech_app/views/screens/workout_screen.dart';

import '../../models/workout_model.dart';
class WorkoutScreen extends StatelessWidget {
   WorkoutScreen({Key? key}) : super(key: key);
  WorkoutController workoutController = Get.put(WorkoutController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout List'),
      ),
      body: Center(
        child: GetBuilder(
          builder: (WorkoutController workoutController) {
            return ListView.builder(
              itemCount: workoutController.workoutList[workoutController.workoutIndex].sets!.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text(workoutController.workoutList[workoutController.workoutIndex].sets![index].name),
                    subtitle: Text(workoutController.workoutList[workoutController.workoutIndex].sets![index].description),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        workoutController.removeSet(workoutController.workoutList[workoutController.workoutIndex].sets![index]);
                      },
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          workoutController.addSet(SetModel(
            name: 'Bench press',
            description: 'Bench press - 40kg',
            setNumber: '1',
            weightKilograms: '40',
            repetitions: '10',
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}