import 'package:get/get.dart';
import 'package:magic_tech_app/models/workout_model.dart';

class WorkoutController  extends GetxController {
  WorkoutModel workoutModel = WorkoutModel();

  List<WorkoutModel> workoutList = <WorkoutModel>[].obs;

  void addWorkout(WorkoutModel workoutModel) {
    workoutList.add(workoutModel);
  }

  void removeWorkout(WorkoutModel workoutModel) {
    workoutList.remove(workoutModel);
  }

  void updateWorkout(WorkoutModel workoutModel) {
    workoutList.remove(workoutModel);
    workoutList.add(workoutModel);
  }

  void clearWorkoutList() {
    workoutList.clear();
  }

  void setWorkoutModel(WorkoutModel workoutModel) {
    this.workoutModel = workoutModel;
  }

  WorkoutModel getWorkoutModel() {
    return workoutModel;
  }

  List<WorkoutModel> getWorkoutList() {
    return workoutList;
  }



}
