import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Home%20View/Widgets/Home%20Card/widget/Card%20Row/Card%20Row.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Home%20View/Widgets/Home%20Card/widget/Switch%20Button/Switch%20Button.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({super.key});

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Card(
        color: Colors.white,
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: width * .08,
                              child: Text(
                                'tap.',
                                style: TextStyle(
                                    color: Colors.white, fontSize: width * .05),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black12),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(width * .0075),
                                  child: const Text(
                                    'Personal',
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: width * .02,
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Kerollos Harby',
                            style: TextStyle(color: Colors.black, fontSize: width*.05),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Icon(
                        isExpanded
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                      ),
                    ),
                  ],
                ),
              ),

              AnimatedSize(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: SizedBox(
                  height: isExpanded ? null : 0,
                  child: isExpanded
                      ? Column(
                          children: [
                            const SizedBox(height: 16),
                            Divider(
                              color: Colors.black,
                              thickness: .5,
                              height: 0,
                              indent: width * .05,
                              endIndent: width * .05,
                            ),
                            const SizedBox(height: 16),
                            CardRow(
                              title: 'Direct Mode',
                              icon1: Icon(
                                Icons.send,
                                color: Colors.black,
                                size: width * .05,
                              ),
                              icon2: Icon(
                                Icons.info_outline_rounded,
                                color: Colors.black,
                                size: width * .05,
                              ),
                            ),
                            const SizedBox(height: 16),
                            CardRow(
                              title: 'Lead Capture',
                              icon1: Icon(
                                Icons.note_add_outlined,
                                color: Colors.black,
                                size: width * .05,
                              ),
                              icon2: Icon(
                                Icons.info_outline_rounded,
                                color: Colors.black,
                                size: width * .05,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Divider(
                              color: Colors.black,
                              thickness: .5,
                              height: 0,
                              indent: width * .05,
                              endIndent: width * .05,
                            ),
                            const SizedBox(height: 16),
                            const SwitchButton(),
                            const SizedBox(height: 16),
                          ],
                        )
                      : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
