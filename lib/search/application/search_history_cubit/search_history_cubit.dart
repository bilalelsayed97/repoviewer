import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repoviewr/search/infrastructure/search_hisrory_repository.dart';

part 'search_history_state.dart';
part 'search_history_cubit.freezed.dart';

class SearchHistoryCubit extends Cubit<SearchHistoryState> {
  final SearchHisroryRepository _searchHisroryRepository;
  SearchHistoryCubit(this._searchHisroryRepository)
      : super(const SearchHistoryState.initial());

  void watchSearchTerms(String? term) async {
    emit(const Loading());
    _searchHisroryRepository.watchSearchTerms(filter: term).listen((data) {
      emit(Success(data));
    }, onError: (Object error) {
      emit(Failure(error));
    });
  }

  Future<void> addSearchTerm(String term) async {
    _searchHisroryRepository.addSearchTerm(term);
  }

  Future<void> delete(String term) async {
    _searchHisroryRepository.deleteSearchTerm(term);
  }

  Future<void> putSearchTerm(String term) async {
    _searchHisroryRepository.putSearchTermFirst(term);
  }
}
