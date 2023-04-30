import 'package:flutter/material.dart';

import '../styling.dart';

class List_Home extends StatefulWidget {
  const List_Home(
      {super.key,
      required this.titleTile,
      required this.subtitle,
      required this.icon});
  final String titleTile;
  final String subtitle;
  final IconData icon;
  @override
  State<List_Home> createState() => _List_HomeState();
}

class _List_HomeState extends State<List_Home> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: ListTile(
          title: Text(
            widget.titleTile,
            style: style18().copyWith(fontSize: 17),
          ),
          leading: Icon(
            widget.icon,
            size: 40,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 17,
          ),
          subtitle: Text(
            widget.subtitle,
            style: style16().copyWith(fontSize: 15, color: Colors.grey[600]),
          ),
          visualDensity: VisualDensity.standard,
          tileColor: Colors.grey[200],
          iconColor: Colors.black,
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
