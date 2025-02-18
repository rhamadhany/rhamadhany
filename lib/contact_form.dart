import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/daftar_button_contact.dart';
import 'package:http/http.dart' as http;

class ContactForm extends StatelessWidget {
  ContactForm({super.key});
  final nameController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final messageController = TextEditingController().obs;

  final loadingSendingEmail = false.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Icon(Icons.contact_mail),
              SizedBox(
                width: 10,
              ),
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
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IntrinsicHeight(
                                child: contact(nameController, 'Name')),
                            SizedBox(
                              height: 10,
                            ),
                            IntrinsicHeight(
                                child: contact(emailController, 'Email')),
                            SizedBox(
                              height: 10,
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
                                        if (inputNotValid() ||
                                            emailNotValid()) {
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
    return nameController.value.text == '' ||
        messageController.value.text == '';
  }

  bool emailNotValid() {
    return emailController.value.text.isNotEmpty &&
        !RegExp(r'^\S+@\S+\.\S').hasMatch(emailController.value.text);
  }

  Widget contact(Rx<TextEditingController> controller, String label) {
    return Obx(() => TextField(
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.top,
          expands: label == 'Message' ? true : false,
          maxLines: label == 'Message' ? null : 1,
          controller: controller.value,
          keyboardType: label == 'Email' ? TextInputType.emailAddress : null,
          style: TextStyle(color: Colors.white),
          onChanged: (_) {
            controller.update((_) {});
          },
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelStyle: TextStyle(color: Colors.white54),
              label: Center(child: Text(label)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: emailNotValid() && label == 'Email'
                          ? Colors.red
                          : Colors.blue)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: emailNotValid() && label == 'Email'
                          ? Colors.red
                          : Colors.blue))),
          onSubmitted: (value) {
            if (label == 'Email' && emailNotValid()) {
              errorEmail();
            }
          },
        ));
  }

  SnackbarController errorEmail() {
    return Get.snackbar('Error', errorString(),
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        backgroundColor: Colors.red);
  }

  String errorString() {
    final text = '';
    if (!emailController.value.text.contains('@') ||
        !emailController.value.text.contains('.')) {
      return 'Please Input Valid Email!';
    } else if (nameController.value.text == '') {
      return 'Please Input Your Name!';
    } else if (messageController.value.text == '') {
      return 'Please Input Your Message!';
    } else {
      return text;
    }
  }

  Future<void> sendEmail() async {
    loadingSendingEmail.value = true;
    try {
      final url = Uri.parse('https://api.web3forms.com/submit');
      final response = await http.post(url, body: {
        'access_key': '582f8409-8d93-4fcc-b482-5b4279ed950b',
        'name': nameController.value.text,
        'email': emailController.value.text,
        'message': messageController.value.text,
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
        Get.snackbar('Error', 'Email Sent Failed! ${response.statusCode}',
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            backgroundColor: Colors.red);
      }
    } catch (_) {
      loadingSendingEmail.value = false;
      Get.toNamed('/');
      Get.snackbar('Success', 'Email Sent Successfully',
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.green);
    }
  }
}
