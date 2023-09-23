import 'package:flutter/material.dart';
import 'package:gojek/components/home_page/akses.dart';
import 'package:gojek/components/home_page/goclub.dart';
import 'package:gojek/components/home_page/gopay.dart';
import 'package:gojek/components/header.dart';
import 'package:gojek/components/home_page/menu.dart';
import 'package:gojek/components/home_page/news.dart';
import 'package:gojek/components/home_page/search_bar.dart';
import 'package:gojek/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: green2,
          elevation: 0,
          toolbarHeight: 71,
          title: const Header(),
        ),
        body: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MySearchBar(),
              Gopay(),
              Menu(),
              GoCLub(),
              Akses(),
              News(),
            ],
          ),
        ));
  }
}
