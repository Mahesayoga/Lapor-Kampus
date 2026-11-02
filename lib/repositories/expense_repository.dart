// lib/repositories/expense_repository.dart
import '../models/expense.dart';

/// Kontrak akses data. Jangan import Firebase atau storage apa pun di sini.
abstract class ExpenseRepository {
  Future<List<Expense>> getAll();
  Future<void> add(Expense expense);
  Future<void> update(Expense expense);
  Future<void> remove(String id);
  Future<void> clear(); // PRV-03: hak penghapusan
}