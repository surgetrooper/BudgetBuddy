import "package:budgetbuddy/bar%20graph/summary.dart";
import "package:budgetbuddy/data/expense_data.dart";
import "package:budgetbuddy/utils/colours.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ExpenseData>(
        builder: (context, value, child) => Scaffold(
              appBar: AppBar(
                elevation: 2,
                title: const Text(
                  "Reports",
                  // ignore: unnecessary_const
                  style: const TextStyle(
                    fontFamily: 'SF Pro',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: true,
                backgroundColor: appbarcolor,
              ),
              body: Center(
                  child: ExpenseSummary(startOfWeek: value.startOfWeekDate())),
            ));
  }
}
