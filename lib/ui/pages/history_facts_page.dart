import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:random_cat_fact/bloc/fact_list_bloc.dart';
import 'package:random_cat_fact/data/models/hive_models/hive_fact_model.dart';
import 'package:random_cat_fact/data/repositories/fact_storage_repo.dart';
import 'package:random_cat_fact/ui/widgets/loader.dart';

class HistoryFactsList extends StatefulWidget {
  const HistoryFactsList({super.key});
  @override
  State<HistoryFactsList> createState() => HistoryFactsListState();
}

class HistoryFactsListState extends State<HistoryFactsList> {
  final factStorageRepository = FactStorage();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('History Facts'),
      ),
      body: BlocBuilder<FactListBLoC, FactListState>(
        builder: (context, state) {
          return state.when(
            loading: () {
              return const LoadingIndicator();
            },
            loaded: ((factsList) => ListView.separated(
                  itemCount: factsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _HistoryFactsListRowWidget(
                      indexInList: index,
                      factsList: factsList,
                      bloc: context.read<FactListBLoC>(),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(height: 1);
                  },
                )),
          );
        },
      ),
    );
  }
}

class _HistoryFactsListRowWidget extends StatelessWidget {
  const _HistoryFactsListRowWidget({
    Key? key,
    required this.indexInList,
    required this.factsList,
    required this.bloc,
  }) : super(key: key);
  final int indexInList;
  final List<Fact> factsList;
  final FactListBLoC bloc;

  @override
  Widget build(BuildContext context) {
    final listFactsIndex = factsList[indexInList];
    var facts = listFactsIndex.fact;
    var date = listFactsIndex.date;

    return Slidable(
      endActionPane: ActionPane(
        motion: const BehindMotion(),
        children: [
          SlidableAction(
              label: 'Delete',
              backgroundColor: Colors.red,
              icon: Icons.delete,
              onPressed: (context) {
                bloc.add(FactListEvent.delete(indexInList: indexInList));
              }),
        ],
      ),
      child: ColoredBox(
        color: Colors.white,
        child: ListTile(
          title: Column(
            children: [
              Text('Fact: $facts'),
              Text('Date: $date'),
            ],
          ),
        ),
      ),
    );
  }
}
