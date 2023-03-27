part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required int pageIndex
  }) = _AppState;

  factory AppState.initial() => _AppState(
        pageIndex: 0
      );
}
