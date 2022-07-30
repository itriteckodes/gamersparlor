import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gamersparlor/helpers/loader_theme.dart';
import 'package:gamersparlor/screens/auth/signin/signin_screen.dart';
import 'package:gamersparlor/screens/creatematch/create_match_screen.dart';
import 'package:gamersparlor/screens/match/match_result.dart';
import 'package:gamersparlor/screens/profile/personal_detail.dart';
import 'package:gamersparlor/screens/profile/profile_screen.dart';
import 'package:gamersparlor/screens/setting/setting_screen.dart';
import 'package:gamersparlor/screens/splash/splash_screen.dart';
import 'package:gamersparlor/screens/support/support_screen.dart';
import 'package:gamersparlor/screens/support/tickets/tickets_screen.dart';
import 'package:gamersparlor/screens/teamladder/team_ladder.dart';
import 'package:gamersparlor/screens/video/upload_screen.dart';
import 'package:gamersparlor/values/colors.dart';
import 'package:gamersparlor/screens/auth/signup/signup_screen.dart';
import 'package:gamersparlor/screens/home/bottomnav_screen.dart';
import 'package:gamersparlor/screens/notification/notification_screen.dart';
import 'package:gamersparlor/screens/transaction/transaction_screen.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
     const SystemUiOverlayStyle(statusBarColor: DARK_GREEN, systemNavigationBarColor: DARK_GREEN));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   void initState() {
     super.initState();
    LoadingHelper.init();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       theme: ThemeData(
          primarySwatch:Colors.green,
        ),
      title: "Gamer's Parlor",
      initialRoute: 'splash',
      routes: {
        'splash': (context) => SplashScreen(),
        'signup': (context) => SignupScreen(),
        'signin': (context) => SigninScreen(),
        'home': (context) => BottomNavScreen(),
        'profile': (context) => ProfileScreen(),
        'person_info': (context) => PersonalDetailScreen(),
        'notification': (context) => NotificationScreen(),
        'setting': (context) => SettingScreen(),
        'transaction': (context) => TransactionScreen(),
        'teamladder': (context) => TeamLadder(),
        'matchresult': (context) => MatchResult(),
        'uploadscreen': (context) => UploadScreen(),
        'creatematch': (context) => CreateMatchScreen(),
        'support': (context) => SupportScreen(),
        'ticket': (context) => TicketsScreen(),
      },
    );
  }
}
