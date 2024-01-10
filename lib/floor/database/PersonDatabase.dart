// database.dart

// required package imports
import 'package:cosmic/floor/dao/PersonDao.dart';
import 'package:cosmic/model/Person.dart';
import 'package:floor/floor.dart';

@Database(version: 1, entities: [Person])
abstract class PersonDatabase extends FloorDatabase {
  PersonDao get personDao;
}
