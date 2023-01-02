import 'package:intl/intl.dart';
import 'package:random_cat_fact/data/models/hive_models/box_manager.dart';
import 'package:random_cat_fact/data/models/hive_models/hive_fact_model.dart';

class FactStorage { 
  final boxManager = BoxManager.instance;
 
 Future<void> saveFact(String factText) async {
    final DateTime now = DateTime.now();
    DateFormat formatter = DateFormat('yyyy-MM-dd hh:mm');
    final box = await boxManager.openFactsBox();
    final fact = Fact(factText, formatter.format(now));
    await box.add(fact);
    await boxManager.closeBox(box);
  }

  Future<void> deleteFact(int indexInList) async {
    final box = await boxManager.openFactsBox();
    await box.deleteAt(indexInList);
    await boxManager.closeBox(box);
  }
  }