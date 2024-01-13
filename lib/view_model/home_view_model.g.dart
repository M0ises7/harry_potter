// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on _HomeViewModel, Store {
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

  late final _$setAsyncCharactersAsyncAction =
      AsyncAction('_HomeViewModel.setAsyncCharacters', context: context);

  @override
  Future<void> setAsyncCharacters() {
    return _$setAsyncCharactersAsyncAction
        .run(() => super.setAsyncCharacters());
  }

  @override
  String toString() {
    return '''
observerCharacters: ${observerCharacters}
    ''';
  }
}
