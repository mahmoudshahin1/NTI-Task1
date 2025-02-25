import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DefultCard extends StatelessWidget {
  const DefultCard({
    super.key,
    this.Iconprefix,
    required this.text,
    this.IconSufix,
  });
  final String? Iconprefix;
  final String text;
  final String? IconSufix;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: Card(
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                SvgPicture.asset(Iconprefix ?? 'null'),
                SizedBox(
                  width: 20,
                ),
                Text(text),
                Spacer(),
                SvgPicture.asset(IconSufix ?? 'null'),
              ],
            ),
          )),
    );
  }
}
