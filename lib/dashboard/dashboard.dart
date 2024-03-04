import 'package:flutter/material.dart';
import 'package:flutter_frequently_question/faq_page/faq.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Color.fromRGBO(130, 130, 209, 1),
            ],
            begin: Alignment(0.2, 0.2),
            end: Alignment.bottomLeft,
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Frequently Asked',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(23, 15, 73, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Questions',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(23, 15, 73, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      Container(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'Want to receive a monthly email in your inbox with ',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Color.fromRGBO(111, 108, 144, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'awesome free Webflow cloneables, resources and more?',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Color.fromRGBO(111, 108, 144, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Please submit your email below.',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Color.fromRGBO(111, 108, 144, 1),
                                  ),
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
                  margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Color.fromRGBO(239, 240, 246, 1),
                        ),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: 'Enter your email',
                            hintStyle: TextStyle(
                              fontSize: 12.0,
                              color: Color.fromRGBO(111, 108, 144, 1),
                            ),
                            border: InputBorder.none,
                            suffixIcon: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FAQPage()));
                              },
                              child: Text(
                                'Subscribe',
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  backgroundColor:
                                      Color.fromRGBO(74, 58, 255, 1)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: [
                            Container(
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.rounded_corner_outlined,
                                          size: 12.0,
                                          color:
                                              Color.fromRGBO(111, 108, 144, 1),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'It\'s',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color:
                                              Color.fromRGBO(111, 108, 144, 1),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' 100% free ',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Color.fromRGBO(74, 58, 255, 1),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'and we will never generate ',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color:
                                              Color.fromRGBO(111, 108, 144, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'questions Unlimited.',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color:
                                              Color.fromRGBO(111, 108, 144, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
