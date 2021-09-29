import 'package:flutter/material.dart';

class ListTileText extends StatelessWidget {
  final String title;
  final IconData? icon;

  const ListTileText(this.title, {Key? key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          trailing: Icon(
            icon,
            color: Colors.white60,
          ),
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.1),
        ),
      ],
    );
  }
}
