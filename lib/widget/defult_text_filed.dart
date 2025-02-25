import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newproject/task2/screenedittask.dart';

class DefultTextFiled extends StatelessWidget {
  const DefultTextFiled({
    required this.label,
    super.key,
    this.prefixIcon,
    this.controller,
    this.ontap,
    this.readOnly = false,
    this.hinttext,
  });
  final String label;
  final String? prefixIcon;
  final TextEditingController? controller;
  final GestureTapCallback? ontap;
  final bool readOnly;
  final String? hinttext;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          keyboardType: TextInputType.name,
          readOnly: readOnly,
          onTap: ontap,
          controller: controller,
          maxLines: 5,
          minLines: 1,
          // onSubmitted: (value) {
          //   hinttext = value;
          //   print(value);
          // },
          decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.all(8),
                child:
                    prefixIcon != null ? SvgPicture.asset(prefixIcon!) : null,
              ),
              border: InputBorder.none,
              label: Text(
                label,
                style: TextStyle(color: Colors.grey),
              ),
              hintText: hinttext,
              hintStyle: TextStyle()),
        ),
      ),
    );
  }
}
