part of 'featured_books_cubit.dart';

sealed class FeaturedbooksState extends Equatable {
  const FeaturedbooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedbooksInitial extends FeaturedbooksState {}

final class FeaturedbooksLoading extends FeaturedbooksState {}

final class FeaturedbooksFailure extends FeaturedbooksState {
  final String errorMsg;

  const FeaturedbooksFailure({required this.errorMsg});
}

final class FeaturedbooksSuccess extends FeaturedbooksState {
  final List<BookModel> books;

  const FeaturedbooksSuccess({required this.books});


}
