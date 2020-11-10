import 'package:flutter/cupertino.dart';
import 'package:imc_bloc/src/ui/ios/pages/home.dart';

class MyCupertinoApp extends StatefulWidget {
  @override
  _MyCupertinoAppState createState() => _MyCupertinoAppState();
}

class _MyCupertinoAppState extends State<MyCupertinoApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Imc - Bloc',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
