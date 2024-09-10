import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Analytics%20View/Widgets/Analyticals%20Row.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Contacts%20View/Widgets/Contacts%20Column/Contacts%20Column.dart';

class AnalyticsView extends StatefulWidget {
  const AnalyticsView({super.key});

  @override
  State<AnalyticsView> createState() => _AnalyticsViewState();
}

class _AnalyticsViewState extends State<AnalyticsView>
    with TickerProviderStateMixin {
  TabController? _tabController;
  int tabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  List<String> periods = [
    'Today',
    'Yesterday',
    'This Week',
    'This Month',
    'Last Month',
    'Last 3 Months',
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const AnalyticalRow(),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            dividerColor: Colors.transparent,
            padding: EdgeInsets.zero,
            splashFactory: NoSplash.splashFactory,
            labelPadding: const EdgeInsets.symmetric(horizontal: 5),
            physics: const AlwaysScrollableScrollPhysics(),
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            onTap: (index) {
              setState(() {
                tabIndex = index;
              });
            },
            tabs: List.generate(
              5,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 2.0),
                // Reduce margin between tabs
                width: width * .23,
                // Reduce the width to make tabs closer
                height: height * .0375,
                decoration: BoxDecoration(
                  color: index == tabIndex
                      ? Colors.black
                      : Colors.grey.withOpacity(.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    periods[index], // Your tab label
                    style: TextStyle(
                      color: index == tabIndex ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ).toList(),
          ),
              SizedBox(
                height: height*.01,
              ),
              const Expanded(child: ContactsColumn()),
        ]),
      ),
    );
  }
}
