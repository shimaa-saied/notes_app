import 'package:hive/hive.dart';

// equal import in use
part 'NodeModel.g.dart';

@HiveType(typeId: 0)//First object select type id
class Nodemodel extends HiveObject{
  @HiveField(0)// adapter
   String title;
  @HiveField(1)
   String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
   int color;

  Nodemodel( {
    required this.title,
    required  this.subtitle,
    required  this.date,
    required  this.color
  });



}


