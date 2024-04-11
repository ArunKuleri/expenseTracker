import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expense_repository/src/expense_repository.dart';

class FirebaseExpense implements ExpenseRepository {
  final categoryCollection =
      FirebaseFirestore.instance.collection("categories");
  final expenseCollection = FirebaseFirestore.instance.collection("expenes");
  @override
  Future<void> createCategory(Category category) async {
    try {
      await categoryCollection
          .doc(category.categoryId)
          .set(category.toEntity().toDocument());
    } catch (e) {
      log(e.toString() as num);
      rethrow;
    }
  }

  @override
  Future<List<Category>> getCategory() async {
    try {
      return await categoryCollection.get().then((value) => value.docs
          .map((e) => Category.fromEnity(CategoryEntity.fromDocument(e.data())))
          .toList());
    } catch (e) {
      log(e.toString() as num);
      rethrow;
    }
  }
}
