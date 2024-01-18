// ignore_for_file: prefer_const_constructors
import "package:budgetbuddy/data/expense_data.dart";
import "package:budgetbuddy/data/expense_item.dart";
import "package:budgetbuddy/utils/colours.dart";
import "package:budgetbuddy/widgets/expense_tile.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: prefer_typing_uninitialized_variables
  final newExpenseNameController = TextEditingController();
  final newExpenseAmountController = TextEditingController();
  void addNewExpense() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Add new expense'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: newExpenseNameController,
                    decoration: InputDecoration(
                      hintText: "expense name",
                    ),
                  ),
                  TextField(
                    controller: newExpenseAmountController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "cost",
                    ),
                  ),
                ],
              ),
              actions: [
                MaterialButton(
                  onPressed: save,
                  child: Text("Save"),
                ),
                MaterialButton(
                  onPressed: cancel,
                  child: Text("Cancel"),
                )
              ],
            ));
  }

  void save() {
    ExpenseItem newExpense = ExpenseItem(
        name: newExpenseNameController.text,
        amount: newExpenseAmountController.text,
        dateTime: DateTime.now());
    Provider.of<ExpenseData>(context, listen: false).addNewExpense(newExpense);

    Navigator.pop(context);
  }

  void cancel() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ExpenseData>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          elevation: 2,
          title: const Text(
            "Dashboard",
            // ignore: unnecessary_const
            style: const TextStyle(
              fontFamily: 'SF Pro',
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: appbarcolor,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: addNewExpense,
          backgroundColor: appbarcolor,
          child: Icon(Icons.add),
        ), // FloatingActionButton
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Color.fromARGB(255, 254, 250, 224),
                ),
                width: double.infinity,
                height: 106,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: const [
                      Text(
                        "Total Expenditure:",
                        style: TextStyle(
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 165, 127, 89),
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "x",
                        style: TextStyle(
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 165, 127, 89),
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 254, 250, 224),
                ),
                width: double.infinity,
                height: 505,
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                      child: Text(
                        "Recent Transactions",
                        style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 165, 127, 89),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SF Pro'),
                      ),
                    ),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints(maxHeight: 450, minHeight: 56),
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: value.getAllExpenseList().length,
                          itemBuilder: (context, index) => ExpenseTile(
                              name: value.getAllExpenseList()[index].name,
                              amount: value.getAllExpenseList()[index].amount,
                              dateTime:
                                  value.getAllExpenseList()[index].dateTime)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
