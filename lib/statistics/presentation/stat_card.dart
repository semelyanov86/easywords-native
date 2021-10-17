import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  final Icon iconData;
  final int value;
  final Text description;

  const StatCard({
    Key? key,
    required this.iconData,
    required this.value,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      color: Theme.of(context).cardColor,
      shadowColor: Theme.of(context).shadowColor,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: iconData,
            title: Text(
              value.toString(),
              style: TextStyle(fontSize: 20),
            ),
            subtitle: description,
          ),
        ],
      ),
    );
  }
}
