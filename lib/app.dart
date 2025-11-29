/*import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:get/get.dart';

import 'bindings/general_bindings.dart';
import 'features/personalization/controllers/language_controller.dart';
import 'localization/languages.dart';
import 'routes/app_routes.dart';
import 'utils/constants/colors.dart';
import 'utils/constants/text_strings.dart';
import 'utils/theme/theme.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final langController = Get.find<LanguageController>();
    return GetMaterialApp(
      title: TTexts.appName,
      locale: langController.selectedLocale.value,
      translations: Languages(),
      fallbackLocale: const Locale('en', 'US'),
      theme: TAppTheme.lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialBinding: GeneralBindings(),
      localizationsDelegates: const [
        quill.FlutterQuillLocalizations.delegate,
      ],
      getPages: AppRoutes.pages,

      /// Show Loader or Circular Progress Indicator meanwhile Authentication Repository is deciding to show relevant screen.
      home: const _InitialLoader(),
    );
  }
}

class _InitialLoader extends StatelessWidget {
  const _InitialLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: TColors.primary,
      body: const Center(
        child: CircularProgressIndicator(
          color: colors.white,
        ),
      ),
    );
  }
}*/
/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:tstore_ecommerce_app/routes/routes.dart';

import 'bindings/general_bindings.dart';
import 'features/personalization/controllers/language_controller.dart';
import 'localization/languages.dart';
import 'routes/app_routes.dart';
import 'utils/constants/colors.dart';
import 'utils/constants/text_strings.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final langController = Get.find<LanguageController>();

    return GetMaterialApp(
      title: TTexts.appName,
      locale: langController.selectedLocale.value,
      translations: Languages(),
      fallbackLocale: const Locale('en', 'US'),
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialBinding: GeneralBindings(),
      localizationsDelegates: const [
        quill.FlutterQuillLocalizations.delegate,
      ],
      getPages: AppRoutes.pages,

      /// Instead of using a plain Scaffold as home, wrap it in a Navigator-ready widget
      initialRoute: TRoutes.Splash,
    );
  }
}*/

/// Initial loading screen with proper Navigator & Overlay support
/*class _InitialLoader extends StatelessWidget {
  const _InitialLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.primary,
      body: const Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}*/


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

import 'bindings/general_bindings.dart';
import 'features/personalization/controllers/language_controller.dart';
import 'localization/languages.dart';
import 'routes/routes.dart'; 
import 'routes/app_routes.dart';
import 'utils/constants/colors.dart';
import 'utils/constants/text_strings.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final langController = Get.find<LanguageController>();

    return GetMaterialApp(
      title: TTexts.appName,
      locale: langController.selectedLocale.value,
      translations: Languages(),
      fallbackLocale: const Locale('en', 'US'),
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialBinding: GeneralBindings(),
      localizationsDelegates: const [
        quill.FlutterQuillLocalizations.delegate,
      ],
      getPages: AppRoutes.pages,

      /// IMPORTANT: use initialRoute instead of home, so Overlay works
      initialRoute: TRoutes.onBoarding, // replace with your splash or initial route
    );
  }
}

