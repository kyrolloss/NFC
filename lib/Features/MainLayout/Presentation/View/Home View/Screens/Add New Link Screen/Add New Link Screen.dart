import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;

  final List<String> categories = [
    'Social Media',
    'Business',
    'Creativity',
    'Payment'
  ];

  final Map<String, GlobalKey> categoryKeys = {
    'Social Media': GlobalKey(),
    'Business': GlobalKey(),
    'Creativity': GlobalKey(),
    'Payment': GlobalKey(),
  };

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: categories.length, vsync: this);
    _scrollController = ScrollController();
  }

  void _scrollToCategory(String category) {
    final keyContext = categoryKeys[category]?.currentContext;
    if (keyContext != null) {
      Scrollable.ensureVisible(keyContext,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          alignment: 0.1);
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      isScrollControlled: true,
      // Allows for more height in modal
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context)
                .viewInsets
                .bottom, // To avoid the keyboard covering the bottom sheet
            left: 16,
            right: 16,
            top: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.facebook,
                size: 100,
                color: Colors.blue,
              ),
              const Text(
                'Facebook',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Link Title',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xffF5F5F1),
                  filled: true,
                  labelText: 'Link Title',
                  hintText: 'Facebook',
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    // تحديد لون البوردر عندما لا يكون النص محددًا
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    // اللون عند عدم التحديد
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                    // اللون عند التحديد
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Facebook URL',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xffF5F5F1),
                  filled: true,
                  hintText: 'EX: https://www.facebook.com/username',
                  hintStyle: TextStyle(
                      color: Colors.black38, fontWeight: FontWeight.w300),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    // تحديد لون البوردر عندما لا يكون النص محددًا
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    // اللون عند عدم التحديد
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                    // اللون عند التحديد
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Close the bottom sheet
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const SizedBox(
                  width: double.infinity,
                    height: 50,
                    child: Center(child: Text('Add' , style: TextStyle(color: Colors.white , fontSize: 18),))),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the bottom sheet
                },
                child: const Text('Cancel' , style: TextStyle(color: Colors.black , fontSize: 18),),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffF5F5F1),
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F1),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            hintText: 'Search for apps',
            hintStyle: TextStyle(
                color: Colors.grey.withOpacity(.3),
                fontWeight: FontWeight.w400),
            suffixIcon: const Icon(Icons.search, color: Colors.black54),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * .01,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TabBar(
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
                  _tabController.index = index;
                  _scrollToCategory(categories[index]);
                });
              },
              tabs: categories.map((category) {
                int index = categories.indexOf(category);
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2.0),
                  width: MediaQuery.of(context).size.width * .325,
                  height: MediaQuery.of(context).size.height * .06,
                  decoration: BoxDecoration(
                    color: _tabController.index == index
                        ? Colors.black
                        : Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      category,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: width * .04,
                        color: _tabController.index == index
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: ListView(
              controller: _scrollController,
              children: [
                _buildCategorySection('Social Media', [
                  _buildAppItem('Facebook', Icons.facebook),
                  _buildAppItem('Instagram', Icons.camera_alt),
                  _buildAppItem('TikTok', Icons.music_note),
                  _buildAppItem('YouTube', Icons.video_library),
                  _buildAppItem('WhatsApp', Icons.message),
                ]),
                _buildCategorySection('Business', [
                  _buildAppItem('LinkedIn', Icons.business),
                  _buildAppItem('Slack', Icons.chat),
                ]),
                _buildCategorySection('Creativity', [
                  _buildAppItem('Figma', Icons.design_services),
                  _buildAppItem('Behance', Icons.palette),
                  _buildAppItem('Dribbble', Icons.sports_basketball),
                  _buildAppItem('Pinterest', Icons.picture_as_pdf_rounded),
                ]),
                _buildCategorySection('Payment', [
                  _buildAppItem('Instapay', Icons.payment),
                  _buildAppItem('PayPal', Icons.account_balance_wallet),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategorySection(String title, List<Widget> apps) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        key: categoryKeys[title],
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 10),
          Column(children: apps),
        ],
      ),
    );
  }

  Widget _buildAppItem(String appName, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.black),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                appName,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            GestureDetector(
              onTap: () {
                _showBottomSheet(context);
              },
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: const Color(0xffF5F5F1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  '+ Add',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
