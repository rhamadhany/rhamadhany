import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/daftar_button_contact.dart';
import 'package:http/http.dart' as http;

class ContactForm extends StatelessWidget {
  ContactForm({super.key});
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  final loadingSendingEmail = false.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(() {
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
              PopupMenuButton(
                  icon: Icon(Icons.menu),
                  itemBuilder: (_) => [
                        PopupMenuItem(
                            child: ListTile(
                          title: Text('HOME'),
                          leading: Icon(Icons.home),
                          onTap: () {
                            Get.toNamed('/');
                          },
                        )),
                        PopupMenuItem(
                            child: ListTile(
                          title: Text('PROJECT'),
                          leading: Icon(Icons.work),
                          onTap: () {
                            Get.toNamed('/project');
                          },
                        ))
                      ])
            ],
          ),
        ),
        body: Center(
          child: Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(color: Colors.black),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: loadingSendingEmail.value
                    ? Center(
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      )
                    : SingleChildScrollView(
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
                                DaftarButtonContact(
                                  dariEmail: true,
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue),
                                      onPressed: () async {
                                        if (inputNotValid()) {
                                          errorEmail();
                                        } else {
                                          await sendEmail();
                                        }
                                      },
                                      label: Text(
                                        'SEND',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 38),
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
              )),
        ),
      );
    });
  }

  bool inputNotValid() {
    return !emailController.text.contains('@') ||
        !emailController.text.contains('.') ||
        nameController.text == '' ||
        messageController.text == '';
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
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.top,
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
    return Get.snackbar('Error', errorString(),
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        backgroundColor: Colors.red);
  }

  String errorString() {
    final text = '';
    if (!emailController.text.contains('@') ||
        !emailController.text.contains('.')) {
      return 'Please Input Valid Email!';
    } else if (nameController.text == '') {
      return 'Please Input Your Name!';
    } else if (messageController.text == '') {
      return 'Please Input Your Message!';
    } else {
      return text;
    }
  }

  Future<void> sendEmail() async {
    loadingSendingEmail.value = true;
    final url =
        Uri.parse('https://formsubmit.co/0f0820774e6b9c849ecc5cb78f592983');
    final response = await http.post(url, body: {
      'name': nameController.text,
      'email': emailController.text,
      'message': messageController.text,
    });
    if (response.statusCode == 200) {
      loadingSendingEmail.value = false;
      Get.toNamed('/');
      Get.snackbar('Success', 'Email Sent Successfully',
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.green);
    } else {
      loadingSendingEmail.value = false;
      Get.snackbar('Error', 'Email Sent Failed!',
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.red);
    }
  }
}
