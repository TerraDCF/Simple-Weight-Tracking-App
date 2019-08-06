import 'package:json_annotation/json_annotation.dart';
part 'info_user.g.dart';

@JsonSerializable()
class InfoUser {
  String gender;
  DateTime dateOfBirth;
  DateTime dateInitialWeight;
  double initialWeight;
  DateTime dateObjectiveWeight;
  double objectiveWeight;
  double height;

  InfoUser({this.gender, this.dateOfBirth, this.height, this.initialWeight, this.dateInitialWeight, this.dateObjectiveWeight, this.objectiveWeight});

  factory InfoUser.fromJson(Map<dynamic, dynamic> json) => _$InfoUserFromJson(json);
  Map<dynamic, dynamic> toJson() => _$InfoUserToJson(this);
}
