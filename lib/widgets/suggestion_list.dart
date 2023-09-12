import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/item_model.dart';

class SuggestionList extends StatefulWidget{
  SuggestionList(this.title, this.items,{Key? key}) :super (key: key);
  String? title;
  List<Item> items;
  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList>{
  @override
  Widget build(BuildContext context){
    return Container();
  }
}