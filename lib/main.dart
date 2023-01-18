import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_flutter_apps/news_change_notifier.dart';
import 'package:testing_flutter_apps/news_page.dart';
import 'package:testing_flutter_apps/news_service.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      home: ChangeNotifierProvider(
        create: (_) => NewsChangeNotifier(NewsService()),
        child: const NewsPage(),
      ),
    );
  }
}
