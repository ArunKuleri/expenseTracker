import 'package:expense_repository/src/expense_repository.dart';

abstract class ExpenseRepository {
  Future<void> createCategory(Category category);
  Future<List<Category>> getCategory();
}
