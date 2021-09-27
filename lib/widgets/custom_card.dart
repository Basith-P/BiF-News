import 'package:flutter/material.dart';

Widget buildCustomCard(BuildContext context, IconData icon, String title, List<Widget> children) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: const Color(0xff1F2022),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 10),
            Text(
              title,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
        childrenPadding: const EdgeInsets.all(15).copyWith(top: 0),
        children: children,
      ),
    ),
  );
}
