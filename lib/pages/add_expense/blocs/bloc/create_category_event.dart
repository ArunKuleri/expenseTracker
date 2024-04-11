part of 'create_category_bloc.dart';

@immutable
sealed class CreateCategoryEvent extends Equatable {
  CreateCategoryBlocEvent();
  @override
  List<Object> get props => [];
}

class CreateCategory extends CreateCategoryEvent {
  final Category category;
  CreateCategory(this.category);

  @override
  CreateCategoryBlocEvent() {}
  @override
  List<Object> get props => [];
}
