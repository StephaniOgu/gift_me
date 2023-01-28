import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:gift_me/presentation/theme/theme.dart';

void main() => runApp(const GiftMe());

class GiftMe extends StatelessWidget {
  const GiftMe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      localeListResolutionCallback: (allLocales, supportedLocales) =>
          _setLocale(allLocales),
      theme: GiftMeTheme.lightTheme,
      home: const GiftMeApp(),
    );
  }

  Locale _setLocale(allLocales) {
    final localeLanguageCode = allLocales?.first.languageCode;
    return AppLocalizations.supportedLocales
            .contains(Locale(localeLanguageCode!))
        ? Locale(localeLanguageCode)
        : const Locale('en');
  }
}

class GiftMeApp extends StatelessWidget {
  const GiftMeApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      //TODO: register dependencies in more clear place
      if (!GetIt.instance.isRegistered<AppLocalizations>()) {
        GetIt.instance.registerLazySingleton<AppLocalizations>(
            () => AppLocalizations.of(context)!);
      }

      return Scaffold(
        body: Center(
          child: Text(GetIt.I.get<AppLocalizations>().appTitle),
        ),
      );
    });
  }
}
