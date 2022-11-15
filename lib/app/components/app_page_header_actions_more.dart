import 'package:flutter/material.dart';

class AppPageHeaderActionsMore extends StatelessWidget {
  const AppPageHeaderActionsMore({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_horiz),
      offset: const Offset(0, 50),
      onCanceled: () {
        print('popularMenuButton: onCanceled');
      },
      onSelected: (value) {
        print('popularMenuButton: onSelected $value');
      },
      itemBuilder: (context) => const [
        PopupMenuItem(
          value: 'stack',
          child: Icon(
            Icons.view_agenda_outlined,
            color: Colors.black54,
          ),
        ),
        PopupMenuItem(
          value: 'grid',
          child: Icon(
            Icons.dashboard_outlined,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
