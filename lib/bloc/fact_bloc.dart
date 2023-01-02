// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:random_cat_fact/data/repositories/fact_repo.dart';
import 'package:random_cat_fact/data/repositories/fact_storage_repo.dart';
import 'package:random_cat_fact/data/repositories/photo_repo.dart';

part 'fact_bloc.freezed.dart';

@freezed
abstract class RandomFactEvent with _$RandomFactEvent {
  const RandomFactEvent._();

  const factory RandomFactEvent.fetch() = _FetchRandomFactEvent;
}

@freezed
abstract class RandomFactState with _$RandomFactState {
  const RandomFactState._();

  const factory RandomFactState.initial() = _InitialRandomFactState;
  const factory RandomFactState.loading() = _LoadingRandomFactState;
  const factory RandomFactState.loaded(
      {required String fact, required String photo}) = _LoadedRandomFactState;
}

class RandomFactBLoC extends Bloc<RandomFactEvent, RandomFactState> {
  RandomFactBLoC({
    required final FactRepo factRepo,
    required final PhotoRepo photoRepo,
    required final FactStorage factStorageRepo,
  })  : _factRepository = factRepo,
        _photoRepository = photoRepo,
        _factStorageRepo = factStorageRepo,
        super(const _InitialRandomFactState()) {
    on<RandomFactEvent>(
      (event, emitter) => event.map<Future<void>>(
        fetch: (event) => _fetch(event, emitter),
      ),
    );
  }

  final FactRepo _factRepository;
  final PhotoRepo _photoRepository;
  final FactStorage _factStorageRepo;

  Future<void> _fetch(
      _FetchRandomFactEvent event, Emitter<RandomFactState> emitter) async {
    emitter(const _LoadingRandomFactState());
    final fact = await _factRepository.getFact();
    await _factStorageRepo.saveFact(fact);
    final photo = await _photoRepository.getPhoto();
    emitter(_LoadedRandomFactState(fact: fact, photo: photo));
  }
}
