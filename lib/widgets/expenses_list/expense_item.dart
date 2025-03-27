import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});
  final Expense expense;
  @override
  Widget build(BuildContext context) {
    const categoryIcons = {
      Category.food: Icons.lunch_dining,
      Category.travel: Icons.flight_takeoff,
      Category.leisure: Icons.movie,
      Category.work: Icons.work
    };
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 4),
            Row(
              children: [
                //could use just toString, but this will limit it to 2 digits
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8),
                    Text(expense.date.toString())
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
