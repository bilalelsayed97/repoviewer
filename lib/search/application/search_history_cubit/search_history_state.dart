part of 'search_history_cubit.dart';

@freezed
class SearchHistoryState with _$SearchHistoryState {
  const factory SearchHistoryState.initial() = Initial;
  const factory SearchHistoryState.loading() = Loading;
  const factory SearchHistoryState.success(List<String> data) = Success;
  const factory SearchHistoryState.failure(Object failure) = Failure;
}
