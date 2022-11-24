import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/budget.dart';
import 'package:counter_7/mywatchlist.dart';

Drawer buildDrawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: [
        ListTile(
          title: const Text('counter_7'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const MyHomePage()),
            );
          },
        ),
        ListTile(
          title: const Text('Tambah Budget'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const BudgetFormPage()),
            );
          },
        ),
        ListTile(
          title: const Text('Data Budget'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const DataBudgetPage()),
            );
          },
        ),
        ListTile(
          title: const Text('My Watchlist'),
          onTap: () {
            // Route menu ke halaman to do
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const MyWatchListPage()),
            );
          },
        ),
      ],
    ),
  );
}