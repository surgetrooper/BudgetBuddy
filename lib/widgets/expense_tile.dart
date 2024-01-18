import "package:flutter/material.dart";

class ExpenseTile extends StatelessWidget {
  final String name;
  final String amount;
  final DateTime dateTime;

  const ExpenseTile(
      {super.key,
      required this.name,
      required this.amount,
      required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: const TextStyle(
            color: Color.fromARGB(255, 60, 161, 149),
            fontWeight: FontWeight.bold,
            fontFamily: 'SF Pro'),
      ),
      // ignore: prefer_interpolation_to_compose_strings
      subtitle: Text(dateTime.day.toString() +
          ' / ' +
          dateTime.month.toString() +
          ' / ' +
          dateTime.year.toString()),
      // ignore: prefer_interpolation_to_compose_strings
      trailing: Text('\$' + amount),
    );
  }
}
