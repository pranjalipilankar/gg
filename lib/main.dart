import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:green_gather/provider/comment_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CommentProvider()),
        // Add other providers here if needed
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            theme: theme,
            title: 'green_gather',
            debugShowCheckedModeBanner: false,
            initialRoute: AppRoutes.initialRoute,
            routes: AppRoutes.routes,
            scaffoldMessengerKey: globalMessengerKey, // Added this line
          );
        },
      ),
    );
  }
}