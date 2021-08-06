import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/CurrentUserSettings.dart';
import 'package:whatsapp/DarkThemeProvider.dart';
import 'package:whatsapp/HomePage.dart';
import 'package:whatsapp/NewChat.dart';
import 'package:whatsapp/Styles.dart';
import 'package:whatsapp/UTILS/AppColors.dart';
import 'package:whatsapp/UTILS/SharedPrefrences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider theme = new DarkThemeProvider();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    theme.darkTheme = await theme.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return theme;
      },
      child:
          //  Consumer<DarkThemeProvider>(
          //   builder: (context,value,Widget child){
          //       return
          MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Styles.themeData(theme.darkTheme, context),
        home: HomePage(),
        routes: {
          '/home': (context) => HomePage(),
          '/setting': (context) => CurrentUserSettings(),
          '/newchat': (context) => NewChat()
        },
      ),
      // },
      // ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'WhatsApp',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//           primaryColor: AppColors.tealGreenDark,
//           accentColor: AppColors.lightGreenDark),
//       home: HomePage(),
//       routes: {
// '/home': (context) => HomePage(),
// '/setting': (context) => CurrentUserSettings(),
// '/newchat': (context) => NewChat()
//       },
//     );
//   }
// }
