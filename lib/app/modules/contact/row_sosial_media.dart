import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/app/modules/email/views/email_view.dart';
import 'package:portofolio/app/modules/contact/list_sosial_media.dart';
import 'package:url_launcher/url_launcher.dart';

class RowSosialMedia extends StatelessWidget {
  const RowSosialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Get.dialog(EmailView());
              },
              icon: Icon(Icons.email)),
          ...List.generate(ListSosialMediaModel.list.length, (index) {
            final item = ListSosialMediaModel.list[index];
            return IconButton(
                onPressed: () => launchUrl(Uri.parse(item.url)),
                icon: Icon(item.icon));
          })
        ],
      ),
    );
  }
}
