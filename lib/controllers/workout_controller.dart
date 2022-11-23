import 'package:get/get.dart';
import 'package:magic_tech_app/models/workout_model.dart';

class WorkoutController  extends GetxController {

  List<WorkoutModel> workoutList = [];

  int workoutIndex = 0;
  int setIndex = 0;

  void addWorkout (WorkoutModel workoutModel){
    workoutList.add(workoutModel);
    update();
  }

  void removeWorkout (WorkoutModel workoutModel){
    workoutList.remove(workoutModel);
    update();
  }

  void setWorkoutIndex (int index){
    workoutIndex = index;
  }

  void addSet (SetModel setModel){
    workoutList[workoutIndex].sets!.add(setModel);
    update();
  }

  void removeSet (SetModel setModel){
    workoutList[workoutIndex].sets!.remove(setModel);
    update();
  }

}
