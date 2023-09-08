import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkMode = false; // Biến để theo dõi chế độ tối/sáng

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: isDarkMode ? Colors.black : Colors.white, // Thay đổi màu nền cho chế độ tối/sáng
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
              // Khi ấn vào biểu tượng chuyển đổi, chuyển đổi chế độ tối/sáng
              setState(() {
                isDarkMode = !isDarkMode;
              });
            },
            icon: Icon(
              isDarkMode ? Icons.light_mode : Icons.dark_mode, // Chọn biểu tượng tối/sáng tùy theo chế độ hiện tại
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
      backgroundColor: isDarkMode ? Colors.black : Colors.white, // Thay đổi màu nền cho chế độ tối/sáng
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: isDarkMode ? Colors.black : Colors.white, // Thay đổi màu nền cho chế độ tối/sáng
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
}
