import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_cat_fact/bloc/fact_bloc.dart';
import 'package:random_cat_fact/bloc/fact_list_bloc.dart';
import 'package:random_cat_fact/data/repositories/fact_repo.dart';
import 'package:random_cat_fact/data/repositories/fact_storage_repo.dart';
import 'package:random_cat_fact/data/repositories/photo_repo.dart';
import 'package:random_cat_fact/navigation/navigation.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  static final mainNavigation = MainNavigation();
  final factRepository = FactRepo();

  final photoRepository = PhotoRepo();

  final factStorageRepository = FactStorage();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RandomFactBLoC(
              factRepo: factRepository,
              photoRepo: photoRepository,
              factStorageRepo: factStorageRepository),
        ),
        BlocProvider(
          create: (context) =>
              FactListBLoC(factStorageRepo: factStorageRepository),
        ),
      ],
      child: MaterialApp(
        title: 'Cat Random Fact',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: mainNavigation.routes,
        initialRoute: mainNavigation.initialRoute,
      ),
    );
  }
}
