import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/app/modules/email/bindings/email_binding.dart';

import '../controllers/email_controller.dart';

class EmailView extends GetView<EmailController> {
  const EmailView({super.key});
  @override
  Widget build(BuildContext context) {
    EmailBinding().dependencies();
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Obx(() {
          return controller.sendLoading.value
              ? Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                )
              : AlertDialog(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(
                    "Send Email",
                    style: GoogleFonts.aladin(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                  content: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ...List.generate(controller.list.length, (index) {
                          final item = controller.list[index];
                          return item;
                        }),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IntrinsicWidth(
                            child: Obx(() => IconCustom(
                                margin:
                                    EdgeInsetsGeometry.fromLTRB(20, 20, 0, 0),
                                backgroundColor: controller.allValid.value
                                    ? Colors.white
                                    : Colors.grey,
                                icon: Icon(
                                  Icons.send,
                                  color: Colors.black,
                                ),
                                child: Text('Send',
                                    style: GoogleFonts.aladin(
                                        color: Colors.black, fontSize: 18)),
                                onPressed: () {
                                  controller.sendEmail();
                                })),
                          ),
                        )
                      ],
                    ),
                  ),
                );
        }));
  }
}

// class EmailDialogStatic {

// }

class EmailDialogModel extends StatelessWidget {
  const EmailDialogModel({
    super.key,
    this.onTap,
    required this.title,
    required this.controller,
    this.hintText,
    required this.focusNode,
    required this.isFocused,
    required this.isValid,
  });
  final String title;
  final String? hintText;
  final TextEditingController controller;
  final FocusNode focusNode;
  final Function(String value)? onTap;
  final RxBool isFocused;
  final RxBool isValid;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8),
        width: Get.width * 0.75,
        child: TextField(
          focusNode: focusNode,
          controller: controller,
          maxLines: null,
          style: GoogleFonts.ubuntu(),
          decoration: InputDecoration(
            labelStyle: GoogleFonts.ubuntu(),
            label: Obx(() => Text(isFocused.value ? title : hintText ?? '')),
          ),
        ));
  }
}

class IconCustom extends StatelessWidget {
  const IconCustom(
      {super.key,
      this.paddingWidth = 12,
      required this.icon,
      required this.child,
      required this.onPressed,
      this.padding =
          const EdgeInsetsGeometry.symmetric(horizontal: 12, vertical: 8),
      this.margin = const EdgeInsetsGeometry.all(8),
      this.backgroundColor,
      this.borderRadius = const BorderRadius.all(Radius.circular(10)),
      this.rightIcon = false});

  final bool rightIcon;
  final Icon icon;
  final Widget child;
  final Function() onPressed;
  final double paddingWidth;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry margin;
  final Color? backgroundColor;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration:
              BoxDecoration(color: backgroundColor, borderRadius: borderRadius),
          padding: padding,
          child: Row(
            children: [
              if (!rightIcon) icon,
              if (!rightIcon) SizedBox(width: paddingWidth),
              child,
              if (rightIcon) SizedBox(width: paddingWidth),
              if (rightIcon) icon
            ],
          ),
        ),
      ),
    );
  }
}
