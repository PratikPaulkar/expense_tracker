import 'package:expense_tracker/Widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});
  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course', 
      amount:20, 
      date: DateTime.now(), 
      category: Category.food,
    ),
    Expense(
      title: 'Flutter Course', 
      amount:20, 
      date: DateTime.now(), 
      category: Category.work,
    ),
    Expense(
      title: 'Cinema', 
      amount:20, 
      date: DateTime.now(), 
      category: Category.leisure,
    ),
    Expense(
      title: 'Trip', 
      amount:20, 
      date: DateTime.now(), 
      category: Category.travel,
    ),
  ];

  _openAddExpenseOverlay() {
    showModalBottomSheet(context: context, builder: (ctx) {
      return const Text("Modal bottom sheet");
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ExpenseTracker'),
        actions: [
          IconButton(onPressed: _openAddExpenseOverlay, icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          const Text("The Chart"),
          Expanded(child: ExpensesList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}