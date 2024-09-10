import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Contacts%20View/Widgets/Taps/Contacts%20Screen/Contacts%20Screen.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Contacts%20View/Widgets/Taps/Groups%20Screen/Groups%20Screen.dart';
import 'Widgets/Contacts Row/Contacts Row.dart';
import 'Widgets/Search Row/Search Row.dart';

class ContactsView extends StatefulWidget {
  const ContactsView({super.key});

  @override
  State<ContactsView> createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView>with TickerProviderStateMixin {
  late TabController tabController;
  late final CustomSegmentedController<int> customSegmentController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 2, vsync: this);

    customSegmentController = CustomSegmentedController<int>();
    customSegmentController.value = 1;

    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        customSegmentController.value = tabController.index + 1;
      }
    });

    customSegmentController.addListener(() {
      tabController.index = customSegmentController.value! - 1;
    });
  }



  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const ContactsRow(),
          const SearchRow(),
          SizedBox(
            height: height * .02,
          ),
          SizedBox(
            width: width * .9,
            child: CustomSlidingSegmentedControl(
              controller: customSegmentController!,
              height: height * .06,
              innerPadding: const EdgeInsets.all(0),
              fromMax: true,
              isStretch: true,
              customSegmentSettings:
                  CustomSegmentSettings(hoverColor: Colors.red),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              thumbDecoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              duration: const Duration(milliseconds: 300),
              onValueChanged: (value) {},
              children: {
                1: Text(
                  'Contacts',
                  style: TextStyle(color: Colors.white, fontSize: width * .04),
                ),
                2: Text(
                  'Groups',
                  style: TextStyle(color: Colors.white, fontSize: width * .04),
                ),
              },
            ),
          ),
          Expanded(
              child: TabBarView(
                controller: tabController,
                  children: const [
            ContactsScreen(),
            GroupScreen(),
          ]))
        ],
      ),
    ));
  }
}
