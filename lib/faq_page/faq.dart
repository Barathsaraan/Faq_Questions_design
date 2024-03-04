import 'package:flutter/material.dart';
import 'package:flutter_frequently_question/faq_page/faq_design.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(130, 130, 209, 1),
              Colors.white,
            ],
            begin: Alignment.topRight,
            end: Alignment(0.1, 0.2),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  Container(
                    width: double
                        .infinity, // Set width to the maximum available width
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromRGBO(239, 240, 246, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '1. FAQ Accordion V1',
                              style: TextStyle(
                                  color: Color.fromRGBO(23, 15, 73, 1),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromRGBO(239, 240, 246, 1),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search questions here',
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Color.fromRGBO(111, 108, 144, 1),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  faqdesign(
                    question:
                        'What is Webflow and why is it the best website builder?',
                    answer:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                  ),
                  faqdesign(
                    question:
                        'What is your favorite template from BRIX Templates?',
                    answer:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                  ),
                  faqdesign(
                    question:
                        'How do you clone a Webflow Template from the Showcase?',
                    answer:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
