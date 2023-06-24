import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karaoke_songbook/utils/theme/theme_data.dart';

import 'bindings/initializing_dependency.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const KaraokeHost());
}

class KaraokeHost extends StatelessWidget {
  const KaraokeHost({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetMaterialApp(
        initialBinding: InitializingDependency(),
        debugShowCheckedModeBanner: false,
        title: 'Karaoke SongBook',
        theme: CustomThemeData.lightViewTheme,
        home: const SplashScreen(),
      ),
    );
  }
}
