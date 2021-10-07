import 'package:flutter/material.dart';

class UserInfoRow extends StatelessWidget {
  final String label;
  final String value;

  const UserInfoRow({Key? key, required this.label, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(label),
        Text(value),
      ],
    );
  }
}
