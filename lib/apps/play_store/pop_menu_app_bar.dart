import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopMenuAppBar extends StatelessWidget {
  const PopMenuAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container();
    return PopupMenuButton(
        icon: Icon(Icons.menu),
        // color: Colors.grey,
        itemBuilder: (context) => [
              PopupMenuItem(
                  onTap: () {
                    Get.toNamed('/');
                  },
                  child:
                      ListTile(leading: Icon(Icons.home), title: Text('HOME'))),
              PopupMenuItem(
                  onTap: () {
                    Get.toNamed('/contact');
                  },
                  child: ListTile(
                      leading: Icon(Icons.contact_mail),
                      title: Text('CONTACT'))),
              PopupMenuItem(
                  onTap: () {
                    Get.toNamed('/project');
                  },
                  child: ListTile(
                      leading: Icon(Icons.work), title: Text('PROJECT'))),
            ]);
  }
}
