
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}
final class SimilarBooksLoading extends SimilarBooksState {}
final class SimilarBooksFailure extends SimilarBooksState {
  final String errorMsg;

  const SimilarBooksFailure({required this.errorMsg});
}
final class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksSuccess({required this.books});

}
