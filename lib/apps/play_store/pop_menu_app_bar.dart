import 'package:flutter/material.dart';

class PopMenuAppBar extends StatelessWidget {
  const PopMenuAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container();
    return PopupMenuButton(
        icon: Icon(Icons.menu),
        color: Colors.grey,
        itemBuilder: (context) => [
              PopupMenuItem(
                  child:
                      ListTile(leading: Icon(Icons.home), title: Text('HOME'))),
              PopupMenuItem(
                  child: ListTile(
                      leading: Icon(Icons.contact_mail),
                      title: Text('CONTACT'))),
              PopupMenuItem(
                  child: ListTile(
                      leading: Icon(Icons.work), title: Text('PROJECT'))),
            ]);
  }
}
