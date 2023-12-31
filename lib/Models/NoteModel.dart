import 'package:hive/hive.dart';
part 'NoteModel.g.dart';   //تالت شغلة    


@HiveType(typeId: 0)   //هاد اول اوبجكت


class NoteModel extends HiveObject{
  @HiveField(0)  //تاني اوبجكت
  final String title;
   @HiveField(1)
  final String subTitle;
   @HiveField(2)
  final String date;
   @HiveField(3)
  final int color;

  NoteModel({required this.title, required this.subTitle, required this.date, required this.color});
}
