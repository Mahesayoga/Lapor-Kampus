// lib/repositories/in_memory_expense_repository.dart
import 'expense_repository.dart';
import '../models/expense.dart';

class InMemoryExpenseRepository implements ExpenseRepository {
  final _items = <String, Expense>{};

  @override
  Future<List<Expense>> getAll() async => _items.values.toList();

  @override
  Future<void> add(Expense e) async {
    _items[e.id] = e;
  }

  @override
  Future<void> update(Expense e) async {
    _items[e.id] = e;
  }

  @override
  Future<void> remove(String id) async {
    _items.remove(id);
  }

  @override
  Future<void> clear() async {
    _items.clear();
  }
}