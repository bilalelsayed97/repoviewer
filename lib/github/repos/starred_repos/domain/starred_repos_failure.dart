import 'package:freezed_annotation/freezed_annotation.dart';

part 'starred_repos_failure.freezed.dart';

@freezed
class StarredReposFailure with _$StarredReposFailure {
  const StarredReposFailure._();
  const factory StarredReposFailure.server({String? message}) = _Server;
  const factory StarredReposFailure.storage() = _Storage;
}
