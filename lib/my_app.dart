import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ShannonHeylmun.github.io/tabs/tabs.dart';

class MyApp extends StatelessWidget {
  final String title = "Shannon Heylmun";
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      scrollBehavior: const ScrollBehavior().copyWith(scrollbars: false),
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        tabBarTheme: TabBarTheme.of(context).copyWith(
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.blue.withAlpha(160),
          indicator: BoxDecoration(
            border: Border(bottom: BorderSide(width: 2.0, color: Colors.blue)),
          ),
        ),
        cardTheme: CardTheme.of(context).copyWith(
          color: Colors.white,
          surfaceTintColor: Colors.blueGrey.withAlpha(160),
          shadowColor: Colors.black.withAlpha(160),
          elevation: 4,
        ),
        textTheme: GoogleFonts.latoTextTheme().copyWith(
          bodyMedium: GoogleFonts.caveat(
            textStyle: textTheme.bodyMedium,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: DefaultTabController(
        initialIndex: (TABS.length / 2).floor(),
        length: TABS.length,
        child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(239, 255, 255, 255),
            primary: false,
            toolbarOpacity: 0.8,
            automaticallyImplyLeading: false,
            bottom: const TabBar(tabs: TABS),
            toolbarHeight: 0,
          ),
          body: const TabBarView(children: TAB_SCREENS),
        ),
      ),
    );
  }
}
