// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  late final _$volumesAtom =
      Atom(name: 'HomeStoreBase.volumes', context: context);

  @override
  VolumesModel? get volumes {
    _$volumesAtom.reportRead();
    return super.volumes;
  }

  @override
  set volumes(VolumesModel? value) {
    _$volumesAtom.reportWrite(value, super.volumes, () {
      super.volumes = value;
    });
  }

  late final _$statusAtom =
      Atom(name: 'HomeStoreBase.status', context: context);

  @override
  StatusEnum get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(StatusEnum value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  late final _$getVolumesAsyncAction =
      AsyncAction('HomeStoreBase.getVolumes', context: context);

  @override
  Future getVolumes({required String searchText}) {
    return _$getVolumesAsyncAction
        .run(() => super.getVolumes(searchText: searchText));
  }

  @override
  String toString() {
    return '''
volumes: ${volumes},
status: ${status}
    ''';
  }
}
