// ignore_for_file: depend_on_referenced_packages, avoid_print

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:random_cat_fact/data/models/hive_models/box_manager.dart';
import 'package:random_cat_fact/data/models/hive_models/hive_fact_model.dart';
import 'package:random_cat_fact/data/repositories/fact_storage_repo.dart';

part 'fact_list_bloc.freezed.dart';

@freezed
abstract class FactListEvent with _$FactListEvent {
  const FactListEvent._();

  const factory FactListEvent.setup() = _SetupFactListEvent;

  const factory FactListEvent.delete({required int indexInList}) =
      _DeleteFactListEvent;
}

@freezed
abstract class FactListState with _$FactListState {
  const FactListState._();

  const factory FactListState.loading() = _LoadingFactListState;
  const factory FactListState.loaded({required List<Fact> factsList}) =
      _LoadedFactListState;
}

class FactListBLoC extends Bloc<FactListEvent, FactListState> {
  FactListBLoC({
    required final FactStorage factStorageRepo,
  })  : _factStorageRepo = factStorageRepo,
        super(const _LoadingFactListState()) {
    on<FactListEvent>(
      (event, emitter) => event.map<Future<void>>(
        setup: (event) => _setup(event, emitter),
        delete: (event) => _delete(event, emitter),
      ),
    );
  }
  final FactStorage _factStorageRepo;

  Future<void> _setup(
      _SetupFactListEvent event, Emitter<FactListState> emitter) async {
    emitter(const _LoadingFactListState());
    final box = await BoxManager.instance.openFactsBox();
    final factsList = (box).values.toList();
    await BoxManager.instance.closeBox(box);
    emitter(_LoadedFactListState(factsList: factsList));
  }

  Future<void> _delete(
      _DeleteFactListEvent event, Emitter<FactListState> emitter) async {
    await _factStorageRepo.deleteFact(event.indexInList);
    final box = await BoxManager.instance.openFactsBox();
    final factsList = (box).values.toList();
    await BoxManager.instance.closeBox(box);
    emitter(_LoadedFactListState(factsList: factsList));
  }
}
