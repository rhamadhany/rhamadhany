import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/api_webform3.dart';
import 'package:portofolio/app/modules/email/views/email_view.dart';
import 'package:portofolio/main.dart';
import 'package:http/http.dart' as http;

class EmailController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();
  final nameFocus = FocusNode();
  final emailFocus = FocusNode();
  final messageFocus = FocusNode();
  // final hasNameFocus = false.obs;
  // final hasemailFocus = false.obs;
  final hasMessageFocus = false.obs;

  final nameValid = false.obs;
  final emailValid = false.obs;
  final messageValid = false.obs;
  final sendLoading = false.obs;

  void validListener() {
    nameController.addListener(() {
      nameValid.value = nameController.text.trim().isNotEmpty;
    });

    emailController.addListener(() {
      final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
      emailValid.value = regex.hasMatch(emailController.text);
      // emailValid.value = emailController.text.trim().isNotEmpty;
    });

    messageController.addListener(() {
      messageValid.value = messageController.text.trim().isNotEmpty;
    });
  }

  RxBool get allValid {
    return (nameValid.value && emailValid.value && messageValid.value).obs;
  }

  late List<EmailDialogModel> list;
  void initialList() {
    list = [
      EmailDialogModel(
        title: locale.languageCode == 'id' ? 'Nama' : 'Name',
        controller: nameController,
        focusNode: nameFocus,
        isFocused: true.obs,
        isValid: nameValid,
      ),
      EmailDialogModel(
        title: 'Email',
        controller: emailController,
        focusNode: emailFocus,
        isFocused: true.obs,
        isValid: emailValid,
      ),
      EmailDialogModel(
        title: locale.languageCode == 'id' ? 'Pesan' : 'Message',
        controller: messageController,
        hintText: locale.languageCode == 'id'
            ? 'Masukkan pesan anda disini...'
            : 'Type your message here...',
        focusNode: messageFocus,
        isFocused: hasMessageFocus,
        isValid: messageValid,
      )
    ];
    focusListener();
  }

  Future<void> sendEmail() async {
    sendLoading.value = true;
    final key = apiWeb3Form;
    final url = Uri.parse('https://api.web3forms.com/submit');
    final param = jsonEncode({
      'access_key': key,
      'name': nameController.text,
      'email': emailController.text,
      'message': messageController.text
    });
    final response = await http.post(url,
        headers: {'Content-Type': 'application/json'}, body: param);
    Get.back();

    if (response.statusCode == 200) {
      snackSucceed(
          locale.languageCode == 'id' ? 'Berhasil' : 'Succeed',
          locale.languageCode == 'id'
              ? 'Email berhasil dikirim'
              : 'Email sent successfully');
    } else {
      snackError(
          locale.languageCode == 'id' ? 'Gagal' : 'Failed',
          locale.languageCode == 'id'
              ? 'Email tidak berhasil dikirim'
              : 'Email not sent successfully');
    }
  }

  void focusListener() {
    messageFocus.addListener(() {
      hasMessageFocus.value = messageFocus.hasFocus;
    });
  }

  @override
  void onInit() {
    super.onInit();
    validListener();

    initialList();
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    messageController.dispose();
    super.onClose();
  }
}

void snackSucceed(String title, String message) {
  Get.snackbar(title, message,
      snackPosition: SnackPosition.BOTTOM,
      colorText: Colors.white,
      backgroundColor: Colors.blue);
}

void snackError(String title, String message) {
  Get.snackbar(title, message,
      snackPosition: SnackPosition.BOTTOM,
      colorText: Colors.white,
      backgroundColor: Colors.red);
}
