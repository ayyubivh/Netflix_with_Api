part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initiaLize() = InitiaLize;
  const factory SearchEvent.searchMovies({
    required String moviQuery,
  }) = SearchMovies;
}
