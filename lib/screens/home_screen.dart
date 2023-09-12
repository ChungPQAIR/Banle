import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/select_category.dart';
import 'package:flutter_application_1/widgets/suggestion_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        toolbarHeight: 80.0,
        title: Row(
          children: [
            Icon(
              Icons.menu,
              color: Colors.blue,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle_rounded,
              color: Colors.grey.shade600,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                isDarkMode = !isDarkMode;
              });
            },
            icon: Icon(
              isDarkMode ? Icons.light_mode : Icons.dark_mode,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildTicketDetails(),
              SizedBox(height: 20.0),
              SelectCategory(),
              _buildTicketDetails(),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        selectedItemColor: Colors.blue.shade600,
        unselectedItemColor: Colors.grey.shade600,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang Chủ"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm Kiếm"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_sharp), label: "Đặt chỗ của tôi"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_sharp), label: "Tài Khoản"),
        ],
      ),
    );
  }

  Widget _buildTicketDetails() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Chi tiết vé hàng không',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text('Tên hành khách:'),
          Text('Chuyến bay:'),
          Text('Ghế:'),
          Text('Thời gian lên máy bay:'),
        ],
      ),
    );
  }
}

_SuggestionListState() {
}

_SelectCategoryState() {
}
