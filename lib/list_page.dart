import 'package:develop_basics/list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list_page extends StatelessWidget {
  List<String> countries=['Pakistan','Dubai','Saudi Arabia','Azerbaijan','Afghanistan','Canada','Brazil','Germany','Japan','Mexico'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white54,
        centerTitle: true,
        title: Text('Listed Items'),
      ),
      body: list_view(cu_list: countries),
    );
  }
}
