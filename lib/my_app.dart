import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sh_portfolio/tabs/tabs.dart';

class MyApp extends StatelessWidget {
  final String title = "Shannon Heylmun";
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        textTheme: GoogleFonts.asapTextTheme(textTheme),
      ),
      home: DefaultTabController(
        initialIndex: 2,
        length: TABS.length,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: TABS),
            titleSpacing: 0,
            toolbarHeight: 0,
          ),
          body: const TabBarView(children: TAB_SCREENS),
        ),
      ),
    );
  }
}
