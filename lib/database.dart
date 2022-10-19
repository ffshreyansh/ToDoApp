import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';

class todoDatabase {
  List toDoList = [];
  //reference the box
  final _todoBox = Hive.box('todoBox');

  //first time openning the app
  void createInitialData() {
    toDoList = [
      ["Hello Navya Nom Nom", false],
      ["Slide left to delete", false],
    ];
  }

  //load the data from databases
  void loadData() {
    toDoList = _todoBox.get("TODOLIST");
  }

  //update databases regulary
  void updateDatabase() {
    _todoBox.put("TODOLIST", toDoList);
  }
}
