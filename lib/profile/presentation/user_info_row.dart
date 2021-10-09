import 'package:flutter/material.dart';

class UserInfoRow {
  final String label;
  final String value;

  const UserInfoRow({required this.label, required this.value});

  DataRow generate() {
    return DataRow(cells: [
      DataCell(Text(label)),
      DataCell(Text(value)),
    ]);
  }
}
