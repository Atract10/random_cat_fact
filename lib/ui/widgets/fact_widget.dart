import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_cat_fact/bloc/fact_bloc.dart';
import 'package:random_cat_fact/bloc/fact_list_bloc.dart';
import 'package:random_cat_fact/ui/widgets/loader.dart';

class FactWidget extends StatefulWidget {
  const FactWidget({
    Key? key,
  }) : super(key: key);

  @override
  FactWidgetState createState() => FactWidgetState();
}

class FactWidgetState extends State<FactWidget> {

  @override
  void initState() {
    context.read<FactListBLoC>().add(const FactListEvent.setup());
    context.read<RandomFactBLoC>().add(const RandomFactEvent.fetch());
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RandomFactBLoC, RandomFactState>(
      builder: (context, state) {
        return state.when(
          initial: () => const LoadingIndicator(),
          loading: () => const LoadingIndicator(),
          loaded: (fact, photo) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  shadowColor: Colors.transparent,
                  elevation: 0.0,
                  margin: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Card(
                        borderOnForeground: false,
                        shadowColor: Colors.white,
                        elevation: 0.0,
                        margin: const EdgeInsets.all(8.0),
                        child: Image.network(
                          photo,
                          width: 400,
                          height: 400,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return const LoadingIndicator();
                          },
                        ),
                      ),
                      Card(
                        shadowColor: Colors.white,
                        elevation: 0.0,
                        margin: const EdgeInsets.all(12.0),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        child: Text(fact),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
