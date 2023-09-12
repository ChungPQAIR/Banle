import 'package:flutter/material.dart';

class SelectCategory extends StatefulWidget {
  SelectCategory({Key? key}) : super(key: key);

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          categoryButton(Icons.flight,"Flight"),
          categoryButton(Icons.train,"Train"),
          categoryButton(Icons.local_hotel,"Hotel"),
          categoryButton(Icons.bus_alert_outlined,"Bus"),
        ],
      ),
    );
  }
}

Widget categoryButton(IconData icon, String? text) {
  return Container(
    margin: EdgeInsets.all(8.0),
    width: 80.0,
    height: 80.0,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade100),
    ),
    child: InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 32,
            color: Color(0xFF2972FF),
            )
        ],
      ),
    ),
  );
}
