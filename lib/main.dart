import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/services.dart';
import 'package:sh_portfolio/my_app.dart';

import 'package:logging/logging.dart';

final log = Logger('Logger');

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}
