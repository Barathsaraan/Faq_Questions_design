import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class faqdesign extends StatelessWidget {
  final String question;
  final String answer;

  const faqdesign({
    Key? key,
    required this.question,
    required this.answer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(15.0),
        elevation: 2.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: ExpansionTile(
            title: Text(
              question,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: SvgPicture.asset('assets/svg/down_arrow.svg'),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  answer,
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
