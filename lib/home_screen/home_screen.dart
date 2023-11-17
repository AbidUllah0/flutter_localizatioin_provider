import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizatioin_provider/home_screen/component/language_pick_drop_down.dart';
import 'package:flutter_localizatioin_provider/home_screen/component/language_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: const Text('Localization'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: const [
          LanguagePickDropDown(),
          SizedBox(width: 12),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const LanguageWidget(),
          const SizedBox(height: 20),
          Text(
            AppLocalizations.of(context)!.language,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            AppLocalizations.of(context)!.greeting,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
