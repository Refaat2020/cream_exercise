import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/config/app_theme.dart';
import 'core/features/dashboard_feature/views/dashboard_screen/dashboard_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      ensureScreenSize: true,
      builder: (BuildContext context, Widget? child) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              themeMode: ThemeMode.light,
              theme: AppTheme.appTheme,
             builder: (context, child) {
             return  MediaQuery(
                 data: MediaQuery.of(context).copyWith(
                   textScaler: TextScaler.noScaling,

                 ), child: DashboardScreen(),
               );
             },
            // EasyLoading.init(),
          ),
        );
      },
    );
  }
}
