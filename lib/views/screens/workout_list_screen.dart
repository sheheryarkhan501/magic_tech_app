
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:magic_tech_app/controllers/workout_controller.dart';
import  'package:get/get.dart';
import 'package:magic_tech_app/views/screens/workout_screen.dart';

import '../../models/workout_model.dart';

class WorkoutListScreen extends StatelessWidget {
  WorkoutListScreen({super.key});
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
              itemCount: workoutController.workoutList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text('Workout ${index + 1}'),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        workoutController.removeWorkout(workoutController.workoutList[index]);
                      },
                    ),
                    onTap: () {
                      workoutController.setWorkoutIndex(index);
                      Get.to(() => WorkoutScreen());
                    },
                  ),
                );
              },
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          workoutController.addWorkout(WorkoutModel(
            sets: [],
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}