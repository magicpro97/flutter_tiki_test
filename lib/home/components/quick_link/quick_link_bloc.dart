import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tiki_test/data/models/quick_link.dart';
import 'package:flutter_tiki_test/data/tiki_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quick_link_bloc.freezed.dart';

@freezed
abstract class QuickLinkState with _$QuickLinkState {
  factory QuickLinkState.initial() = _Load;

  factory QuickLinkState.loading() = _Loading;

  factory QuickLinkState.loaded(List<List<QuickLink>> quickLinkGroup) = _Loaded;

  factory QuickLinkState.fail() = _Fail;
}

class QuickLinkBloc extends Cubit<QuickLinkState> {
  final TikiClient _tikiClient;

  QuickLinkBloc(this._tikiClient) : super(QuickLinkState.initial());

  void fetch() {
    emit(QuickLinkState.loading());

    _tikiClient
        .fetchQuickLinkGroups()
        .then((value) => emit(QuickLinkState.loaded(value.data)))
        .catchError((error) => emit(QuickLinkState.fail()));
  }
}