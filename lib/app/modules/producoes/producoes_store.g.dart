// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'producoes_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProducoesStore on _ProducoesStoreBase, Store {
  late final _$_isLoadingAtom =
      Atom(name: '_ProducoesStoreBase._isLoading', context: context);

  @override
  bool get _isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$_channelAtom =
      Atom(name: '_ProducoesStoreBase._channel', context: context);

  @override
  Channel? get _channel {
    _$_channelAtom.reportRead();
    return super._channel;
  }

  @override
  set _channel(Channel? value) {
    _$_channelAtom.reportWrite(value, super._channel, () {
      super._channel = value;
    });
  }

  late final _$controllerAtom =
      Atom(name: '_ProducoesStoreBase.controller', context: context);

  @override
  YoutubePlayerController get controller {
    _$controllerAtom.reportRead();
    return super.controller;
  }

  @override
  set controller(YoutubePlayerController value) {
    _$controllerAtom.reportWrite(value, super.controller, () {
      super.controller = value;
    });
  }

  late final _$loadMorevideosAsyncAction =
      AsyncAction('_ProducoesStoreBase.loadMorevideos', context: context);

  @override
  Future loadMorevideos() {
    return _$loadMorevideosAsyncAction.run(() => super.loadMorevideos());
  }

  @override
  String toString() {
    return '''
controller: ${controller}
    ''';
  }
}
