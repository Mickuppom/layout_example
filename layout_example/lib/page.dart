import 'package:flutter/material.dart';
import 'package:layout_example/screen/activity_screen.dart';
import 'package:layout_example/screen/article_screen.dart';
import 'package:layout_example/screen/home_screen.dart';

class Page {
  final String title;
  final Icon icon;
  final String label;
  final Widget page;

  Page({this.title, this.icon, this.label, this.page});
}

List<Page> pages = [
  Page(
    icon: Icon(Icons.home),
    label: "home",
    page: HomeScreen(),
    title: "Home",
  ),
  Page(
    icon: Icon(Icons.home),
    label: "news",
    page: ArticleScreen(),
    title: "News",
  ),
  Page(
    icon: Icon(Icons.play_arrow),
    label: "activity",
    page: ActivityScreen(),
    title: "Activity",
  ),
];
