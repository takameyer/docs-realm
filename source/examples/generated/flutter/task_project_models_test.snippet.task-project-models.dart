
part 'models.g.dart';

@RealmModel()
class _Task {
  @PrimaryKey()
  late int id; // Flutter SDK does not yet support ObjectId

  late String name;
  bool isComplete = false;
  String? assignee;
  int priority = 0;
  int progressMinutes = 0;
}

@RealmModel()
class _Project {
  @PrimaryKey()
  late int id; // Flutter SDK does not yet support ObjectId

  late String name;
  late List<_Task> tasks;
  int? quota;
}