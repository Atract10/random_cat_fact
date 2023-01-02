import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_cat_fact/bloc/fact_bloc.dart';


class RandomFactButton extends StatelessWidget {
  const RandomFactButton({super.key,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.read<RandomFactBLoC>().add(const RandomFactEvent.fetch()),
      child: const Text('Another fact!'),
    );
  }
}
