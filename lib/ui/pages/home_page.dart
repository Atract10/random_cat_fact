import 'package:flutter/material.dart';
import 'package:random_cat_fact/data/repositories/fact_repo.dart';
import 'package:random_cat_fact/data/repositories/photo_repo.dart';
import 'package:random_cat_fact/data/repositories/fact_storage_repo.dart';
import 'package:random_cat_fact/ui/widgets/fact_widget.dart';
import 'package:random_cat_fact/ui/widgets/history_fact_butt.dart';
import 'package:random_cat_fact/ui/widgets/random_fact_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final factRepository = FactRepo();
  final photoRepository = PhotoRepo();
  final factStorageRepository = FactStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cat Random Fact'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const FactWidget(),
              const Spacer(),
              SizedBox(
                height: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    RandomFactButton(),
                    HistoryFactsButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
