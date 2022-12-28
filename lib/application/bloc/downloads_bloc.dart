import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/i_download_repo.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/downloads/models/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDowloadsRepo _downloasrepo;
  DownloadsBloc(this._downloasrepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, downloadFailureOrSuccessOption: None()));
      final Either<MainFailure, List<Downloads>> downloadsOption =
          await _downloasrepo.getDownloadsImages();
      emit(downloadsOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              downloadFailureOrSuccessOption: some(
                left(failure),
              )),
          (success) => state.copyWith(
              isLoading: false,
              downloads: success,
              downloadFailureOrSuccessOption: some(
                Right(success),
              ))));
    });
  }
}
