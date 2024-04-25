import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:moolwmsstore/Controller/localization_controller.dart';
import 'package:moolwmsstore/View/Auth/Auth.dart';
import 'package:moolwmsstore/View/Auth/Model/dbConnect.dart';
import 'package:moolwmsstore/helper/messages.dart';
import 'package:moolwmsstore/utils/appConstants.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'helper/get_di.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dbDir = await path_provider.getApplicationDocumentsDirectory();

  // init hive
  await Hive.initFlutter(dbDir.path);
  Hive.registerAdapter(DbConnectAdapter());

  // getIt.registerSingleton<AppRouter>(AppRouter());

  Map<String, Map<String, String>> languages = await di.init();

  runApp(DipshikaApp(
    languages: languages,
  ));
}

// class MyApp extends StatefulWidget {
//   final Map<String, Map<String, String>> languages;
//   const MyApp({
//     super.key,
//     required this.languages,
//   });

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final _router = getIt<AppRouter>();
//   // AutoRouterDelegate get _routerDelegate => AutoRouterDelegate(
//   //     routers: [
//   //       _homeRouter,
//   //       _profileRouter,
//   //       // Add more routers if needed
//   //     ],
//   //   );

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;

//     return GetBuilder<LocalizationController>(
//         initState: (state) {},
//         builder: (localizeController) {
//           return GetMaterialApp.router(
//             opaqueRoute: false,
//             scaffoldMessengerKey: snackbarKey,
//             routerDelegate: _router.delegate(),
//             routeInformationProvider: _router.routeInfoProvider(),
//             routeInformationParser: _router.defaultRouteParser(),
//             debugShowCheckedModeBanner: false,
//             locale: localizeController.locale,
//             fallbackLocale: Locale(
//               AppConstants.LANGUAGE_LIST[0].languageCode,
//             ),
//             translations: Messages(languages: widget.languages),
//             defaultTransition: Transition.topLevel,
//             transitionDuration: const Duration(milliseconds: 500),
//             scrollBehavior: const MaterialScrollBehavior().copyWith(
//               dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch},
//             ),
//             theme: ThemeData(
//               colorScheme: const ColorScheme.dark(
//                 //  background: Colors.red,
//                 primary: Colors.white,
//               ),
//               // primaryColor: Colors.black,
//               // switchTheme: ,
//               useMaterial3: true,
//               actionIconTheme: ActionIconThemeData(
//                 backButtonIconBuilder: (context) => const Icon(
//                   Icons.arrow_back_ios_new,
//                   color: Colors.black,
//                 ),
//               ),
//               drawerTheme: const DrawerThemeData(backgroundColor: Colors.black),
//               appBarTheme: const AppBarTheme(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.black,
//                   iconTheme: IconThemeData()
//                   // color: Colors.white,
//                   ),
//               //  useMaterial3: true,
//               scaffoldBackgroundColor: const Color(0xFFF7F7F7),
//               textTheme: GoogleFonts.nunitoTextTheme(
//                 textTheme,
//               ).copyWith(),
//             ),
//           );
//         });
//   }
// }

class DipshikaApp extends StatefulWidget {
  final Map<String, Map<String, String>> languages;
  const DipshikaApp({
    super.key,
    required this.languages,
  });

  @override
  State<DipshikaApp> createState() => _DipshikaAppState();
}

class _DipshikaAppState extends State<DipshikaApp> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GetBuilder<LocalizationController>(
        initState: (state) {},
        builder: (localizeController) {
          return GetMaterialApp(
            // home: SignUp(),
            home: const Auth(),
            debugShowCheckedModeBanner: false,
            locale: localizeController.locale,
            fallbackLocale: Locale(
              AppConstants.LANGUAGE_LIST[0].languageCode,
            ),
            translations: Messages(languages: widget.languages),
            defaultTransition: Transition.topLevel,
            transitionDuration: const Duration(milliseconds: 500),
            scrollBehavior: const MaterialScrollBehavior().copyWith(
              dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch},
            ),
            // builder: (context, child) {
            //   final mediaQueryData = MediaQuery.of(context);
            //   final scale = mediaQueryData.textScaleFactor.clamp(1.0, 1.3);
            //   return MediaQuery(
            //     data: MediaQuery.of(context)
            //         .copyWith(textScaler: TextScaler.linear(scale)),
            //     child: const SignInUp(),
            //   );
            // },
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,

              colorScheme: const ColorScheme(
                brightness: Brightness.dark,
                primary: Color(0xff1DB954),
                onPrimary: Colors.white,
                primaryContainer: Color(0xff00882F),
                onPrimaryContainer: Colors.white,
                secondary: Color(0xffE4723C),
                onSecondary: Colors.black,
                secondaryContainer: Color(0xffFFDD9A),
                onSecondaryContainer: Color(0xff412408),
                error: Colors.red,
                onError: Colors.white,
                errorContainer: Colors.red,
                onErrorContainer: Color(0xff4D0000),
                background: Color(0xff121212),
                onBackground: Colors.white,
                surface: Color(0xff1D1D1D),
                onSurface: Colors.white,
                surfaceVariant: Color(0xff49454F),
                onSurfaceVariant: Colors.white,
                outline: Color(0xff857E92),
                outlineVariant: Color(0xff68606F),
                shadow: Color(0xff000000),
                scrim: Color(0xff000000),
                inverseSurface: Color(0xffF4EFF4),
                onInverseSurface: Color(0xff333039),
                inversePrimary: Color(0xff69F0AE),
                surfaceTint: Colors.green,
              ),
              // primaryColor: Colors.black,
              // switchTheme: ,
              useMaterial3: true,
              actionIconTheme: ActionIconThemeData(
                backButtonIconBuilder: (context) => const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                ),
              ),
              drawerTheme: const DrawerThemeData(backgroundColor: Colors.black),
              appBarTheme: const AppBarTheme(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.black,
                  iconTheme: IconThemeData()
                  // color: Colors.white,
                  ),
              //  useMaterial3: true,
              //    scaffoldBackgroundColor: const Color(0xFFF7F7F7),
              textTheme: GoogleFonts.nunitoTextTheme(
                textTheme,
              ).copyWith(),
            ),
          );
        });
  }
}
