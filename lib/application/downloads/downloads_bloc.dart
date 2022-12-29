import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

import '../../domain/downloads/i_download_repo.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDowloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          downloadsFailureOrSuccessOption: none(),
        ),
      );
      final Either<MainFailure, List<Downloads>> downloadsOption =
          await _downloadsRepo.getDownloadsImages();
      emit(
        downloadsOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              downloadsFailureOrSuccessOption: Some(
                left(failure),
              )),
          (success) => state.copyWith(
              isLoading: false,
              downloads: success,
              downloadsFailureOrSuccessOption: Some(
                right(success),
              )),
        ),
      );
    });
  }
}