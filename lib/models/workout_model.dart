
class SetModel {
  final String id;
  final String name;
  final String description;
  final String setNumber;
  final String weightKilograms;
  final String repetitions;

  SetModel({
    this.id = "0",
    this.name = "Bench press",
    this.description = "Bench press - 40kg",
    this.setNumber = "1",
    this.weightKilograms = "40",
    this.repetitions = "10",
  });

  factory SetModel.fromJson(Map<String, dynamic> json) {
    return SetModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      setNumber: json['setNumber'],
      weightKilograms: json['weightKilograms'],
      repetitions: json['repetitions'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'setNumber': setNumber,
      'weightKilograms': weightKilograms,
      'repetitions': repetitions,
    };
  }
}

class WorkoutModel {
  List<SetModel>? sets;

  WorkoutModel({
    this.sets,
  });
}

