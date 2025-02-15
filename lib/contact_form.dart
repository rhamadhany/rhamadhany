import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/daftar_button_contact.dart';

class ContactForm extends StatelessWidget {
  ContactForm({super.key});
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              'CONTACT',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Spacer(),
            TextButton(
                onPressed: () {
                  Get.toNamed('/');
                },
                child: Text(
                  'HOME',
                  style: TextStyle(color: Colors.white),
                )),
            TextButton(
                onPressed: () {
                  Get.toNamed('/project');
                },
                child: Text(
                  'PROJECT',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    boxContact(nameController, 'Name'),
                    SizedBox(
                      width: 10,
                    ),
                    boxContact(emailController, 'Email')
                  ],
                ),
                SizedBox(
                    height: Get.height * 0.5,
                    child: contact(messageController, 'Message')),
                Row(
                  children: [
                    // IconButton('HAI'),
                    DaftarButtonContact(
                      dariEmail: true,
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue),
                          onPressed: () {
                            if (!(emailController.text.contains('@') ||
                                emailController.text.contains('.'))) {
                              errorEmail();
                            }
                          },
                          label: Text(
                            'SEND',
                            style: TextStyle(color: Colors.white, fontSize: 38),
                          ),
                          icon: Icon(
                            Icons.email,
                            size: 38,
                            color: Colors.white,
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded boxContact(TextEditingController controller, String label) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child:
            SizedBox(width: Get.width * 0.5, child: contact(controller, label)),
      ),
    );
  }

  TextField contact(TextEditingController controller, String label) {
    return TextField(
      textAlign: TextAlign.center,
      expands: label == 'Message' ? true : false,
      maxLines: label == 'Message' ? null : 1,
      controller: controller,
      keyboardType: label == 'Email' ? TextInputType.emailAddress : null,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelStyle: TextStyle(color: Colors.white54),
        label: Center(child: Text(label)),
      ),
      onSubmitted: (value) {
        if (label == 'Email' && !(value.contains('@') || value.contains('.'))) {
          errorEmail();
        }
      },
    );
  }

  SnackbarController errorEmail() {
    return Get.snackbar('Error', 'Masukkan Email Yang Valid',
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        backgroundColor: Colors.red);
  }
}
