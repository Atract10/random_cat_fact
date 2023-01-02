import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_cat_fact/bloc/fact_list_bloc.dart';
import 'package:random_cat_fact/navigation/navigation.dart';

class HistoryFactsButton extends StatelessWidget {

  const HistoryFactsButton({super.key,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(MainNavigationRouteNames.factsHistory);
        context.read<FactListBLoC>().add(const FactListEvent.setup());
      },
      child: const Text('Fact history'),
    );
  }
}