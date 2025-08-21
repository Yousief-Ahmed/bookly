
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedbooksCubit extends Cubit<FeaturedbooksState> {
  FeaturedbooksCubit(this.homeRepo) : super(FeaturedbooksInitial());

  final HomeRepo homeRepo;

Future <void> fetchFeaturedBooks() async {
    emit(FeaturedbooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FeaturedbooksFailure(errorMsg: failure.errorMsg)),
      (books) => emit(FeaturedbooksSuccess(books: books)),
    );
  }
  
}
