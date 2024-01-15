// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on _HomeViewModel, Store {
  Computed<List<Character>>? _$filteredCharactersComputed;

  @override
  List<Character> get filteredCharacters => (_$filteredCharactersComputed ??=
          Computed<List<Character>>(() => super.filteredCharacters,
              name: '_HomeViewModel.filteredCharacters'))
      .value;

  late final _$observerCharactersAtom =
      Atom(name: '_HomeViewModel.observerCharacters', context: context);

  @override
  List<Character> get observerCharacters {
    _$observerCharactersAtom.reportRead();
    return super.observerCharacters;
  }

  @override
  set observerCharacters(List<Character> value) {
    _$observerCharactersAtom.reportWrite(value, super.observerCharacters, () {
      super.observerCharacters = value;
    });
  }

  late final _$searchTextAtom =
      Atom(name: '_HomeViewModel.searchText', context: context);

  @override
  String get searchText {
    _$searchTextAtom.reportRead();
    return super.searchText;
  }

  @override
  set searchText(String value) {
    _$searchTextAtom.reportWrite(value, super.searchText, () {
      super.searchText = value;
    });
  }

  late final _$hasUpdatedAtom =
      Atom(name: '_HomeViewModel.hasUpdated', context: context);

  @override
  bool get hasUpdated {
    _$hasUpdatedAtom.reportRead();
    return super.hasUpdated;
  }

  @override
  set hasUpdated(bool value) {
    _$hasUpdatedAtom.reportWrite(value, super.hasUpdated, () {
      super.hasUpdated = value;
    });
  }

  late final _$setAsyncCharactersAsyncAction =
      AsyncAction('_HomeViewModel.setAsyncCharacters', context: context);

  @override
  Future<void> setAsyncCharacters() {
    return _$setAsyncCharactersAsyncAction
        .run(() => super.setAsyncCharacters());
  }

  late final _$updateCharactersFromApiAsyncAction =
      AsyncAction('_HomeViewModel.updateCharactersFromApi', context: context);

  @override
  Future<void> updateCharactersFromApi() {
    return _$updateCharactersFromApiAsyncAction
        .run(() => super.updateCharactersFromApi());
  }

  late final _$_HomeViewModelActionController =
      ActionController(name: '_HomeViewModel', context: context);

  @override
  void setSearchText(String text) {
    final _$actionInfo = _$_HomeViewModelActionController.startAction(
        name: '_HomeViewModel.setSearchText');
    try {
      return super.setSearchText(text);
    } finally {
      _$_HomeViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
observerCharacters: ${observerCharacters},
searchText: ${searchText},
hasUpdated: ${hasUpdated},
filteredCharacters: ${filteredCharacters}
    ''';
  }
}
