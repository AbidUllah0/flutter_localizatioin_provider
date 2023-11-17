import 'package:flutter/material.dart';
import 'package:flutter_localizatioin_provider/home_screen/provider/locale_provider.dart';
import 'package:provider/provider.dart';

import '../../l10n/l10n.dart';

class LanguagePickDropDown extends StatefulWidget {
  const LanguagePickDropDown({super.key});

  @override
  State<LanguagePickDropDown> createState() => _LanguagePickDropDownState();
}

class _LanguagePickDropDownState extends State<LanguagePickDropDown> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);

    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: provider.locale,
        icon: const Icon(
          Icons.arrow_drop_down_sharp,
          size: 50,
          color: Colors.white,
          weight: 100,
        ),
        items: L10n.all.map(
          (e) {
            final flag = L10n.getFlag(e.languageCode);
            return DropdownMenuItem(
              value: e,
              onTap: () {
                final provider =
                    Provider.of<LocaleProvider>(context, listen: false);
                provider.setLocale(e);
              },
              child: Center(
                child: Text(
                  flag.toString(),
                  style: TextStyle(fontSize: 32),
                ),
              ),
            );
          },
        ).toList(),
        onChanged: (onChange) {},
      ),
    );
  }
}
