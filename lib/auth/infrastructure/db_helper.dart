import 'package:hive_flutter/adapters.dart';
import 'package:manzil/auth/domain/role_model.dart';
import 'package:manzil/core/domain/car_brand_model.dart';
import 'package:manzil/core/domain/car_data_model.dart';
import 'package:manzil/core/domain/car_model.dart';
import 'package:manzil/core/domain/class_model.dart';
import 'package:manzil/core/domain/district_model.dart';
import 'package:manzil/core/domain/gender_model.dart';
import 'package:manzil/core/domain/region_model.dart';
import 'package:manzil/core/domain/user_model.dart';

class DbHelper {
  static const _boxName = 'userBox';
  static const _userName = 'username';
  static const _userId = '_userId';

  static Future<void> initialize() async {
    try {

      await Hive.initFlutter();
      Hive.registerAdapter(UserModelAdapter());
      Hive.registerAdapter(RegionModelAdapter());
      Hive.registerAdapter(DistrictModelAdapter());
      Hive.registerAdapter(RoleAdapter());
      Hive.registerAdapter(CarDataModelAdapter());
      Hive.registerAdapter(GenderAdapter());
      Hive.registerAdapter(CarClassModelAdapter());
      Hive.registerAdapter(CarBrandModelAdapter());
      Hive.registerAdapter(CarModelAdapter());
      await Hive.openBox(_boxName);
    } catch (e) {
                //  DbHelper.removHiveBox();
      print(
        "error in getting data:$e",
      );
    }
  }

  static Future<void> changeUserName(String newUserName) async {
    final box = await Hive.openBox(
      _boxName,
    );
    await box.put(_userName, newUserName);
  }

  static const String boxName = 'tasksBox';

  // static Future<UserModel> getUserName() async {
  //   final box = await Hive.openBox(_boxName);
  //   return box.get(_userName);
  // }

  static Future<void> openBoxes() async {
    await Hive.openBox<UserModel>(boxName);
  }

  static void addUserData(UserModel task) {
    final taskBox = Hive.box<UserModel>(boxName);
    taskBox.put(_userId, task);
  }
  static void changeUserData(UserModel task) {
    final taskBox = Hive.box<UserModel>(boxName);
        taskBox.delete(_userId);
    taskBox.put(_userId, task);
  }

  static void logOut() {
    final taskBox = Hive.box<UserModel>(boxName);
    taskBox.delete(_userId);
  }

  static void removHiveBox() {
    final taskBox = Hive.box<UserModel>(boxName);
    taskBox.deleteFromDisk();
  }

  static UserModel? getUserData() {
    Box<UserModel> userbox = Hive.box<UserModel>(boxName);
    // DbHelper.removHiv Play with a bully and you got a couple of cuts Alleco lots of late agreeeBox();
 
    // final task=userbox.values.where((element) => element,)
    List<UserModel> userModel = userbox.values.toList();
    print(userModel.length);
    if(userModel.isEmpty){
return null;
    }
    final user=userModel.first;
    return user;
  }

  // static void completeTask(
  //   String id,
  // ) {
  //   final taskBox = Hive.box<TaskModel>(boxName);
  //   TaskModel? task = taskBox.get(id);

  //   if (task != null) {
  //     final taskToUpdate = task.copyWith(isCompleted: true);

  //     taskBox.put(id, taskToUpdate);

  //     print(
  //       'Task with ID $id updated: ${taskToUpdate.taskName}, isCompleted: ${taskToUpdate.isCompleted}',
  //     );
  //   } else {
  //     print(
  //       'Task with ID $id not found',
  //     ); 
  //   }
  // }

  // static void changeTask(TaskModel newTask) {
  //   final taskBox = Hive.box<TaskModel>(
  //     boxName,
  //   );
  //   // TaskModel? task = taskBox.get(id);

  //   // if (task != null) {
  //   TaskModel taskToUpdate = newTask;

  //   taskBox.put(taskToUpdate.id, taskToUpdate);

  // print(
  // 'Task with ID $id updated: ${taskToUpdate.taskName}, isCompleted: ${taskToUpdate.isCompleted}',
  // );//
  // } else {
  //   print(
  //     'Task with ID $id not found',
  //   );
  // }
  // }
}
