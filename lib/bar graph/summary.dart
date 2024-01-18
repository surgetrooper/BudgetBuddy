import "package:budgetbuddy/bar%20graph/bar_graph.dart";
import "package:budgetbuddy/data/expense_data.dart";
import "package:budgetbuddy/date_time.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class ExpenseSummary extends StatelessWidget {
  const ExpenseSummary({super.key, required this.startOfWeek});
  final DateTime startOfWeek;

  @override
  Widget build(BuildContext context) {
    String monday =
        convertDateTimeToString(startOfWeek.add(const Duration(days: 0)));
    String tuesday =
        convertDateTimeToString(startOfWeek.add(const Duration(days: 1)));
    String wednesday =
        convertDateTimeToString(startOfWeek.add(const Duration(days: 2)));
    String thursday =
        convertDateTimeToString(startOfWeek.add(const Duration(days: 3)));
    String friday =
        convertDateTimeToString(startOfWeek.add(const Duration(days: 4)));
    String saturday =
        convertDateTimeToString(startOfWeek.add(const Duration(days: 5)));
    String sunday =
        convertDateTimeToString(startOfWeek.add(const Duration(days: 6)));

    return Consumer<ExpenseData>(
        builder: (context, value, child) => SizedBox(
            height: 200,
            child: MyBarGraph(
              maxY: 5000,
              monAmount: value.calculateDailyExpenseSummary()[monday] ?? 0,
              tueAmount: value.calculateDailyExpenseSummary()[tuesday] ?? 0,
              wedAmount: value.calculateDailyExpenseSummary()[wednesday] ?? 0,
              thurAmount: value.calculateDailyExpenseSummary()[thursday] ?? 0,
              friAmount: value.calculateDailyExpenseSummary()[friday] ?? 0,
              satAmount: value.calculateDailyExpenseSummary()[saturday] ?? 0,
              sunAmount: value.calculateDailyExpenseSummary()[sunday] ?? 0,
            )));
  }
}
