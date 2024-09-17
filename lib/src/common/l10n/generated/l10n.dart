// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `December 05`
  String get date {
    return Intl.message(
      'December 05',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `For You Today`
  String get forYouToday {
    return Intl.message(
      'For You Today',
      name: 'forYouToday',
      desc: '',
      args: [],
    );
  }

  /// `Stable Income`
  String get stableIncome {
    return Intl.message(
      'Stable Income',
      name: 'stableIncome',
      desc: '',
      args: [],
    );
  }

  /// `Low risk\n10,982 participants`
  String get lowRisk {
    return Intl.message(
      'Low risk\n10,982 participants',
      name: 'lowRisk',
      desc: '',
      args: [],
    );
  }

  /// `6.24%`
  String get percent {
    return Intl.message(
      '6.24%',
      name: 'percent',
      desc: '',
      args: [],
    );
  }

  /// `per year`
  String get perYear {
    return Intl.message(
      'per year',
      name: 'perYear',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get view {
    return Intl.message(
      'View',
      name: 'view',
      desc: '',
      args: [],
    );
  }

  /// `Investing Strategies`
  String get investingStrategies {
    return Intl.message(
      'Investing Strategies',
      name: 'investingStrategies',
      desc: '',
      args: [],
    );
  }

  /// `The Big Long`
  String get theBigLong {
    return Intl.message(
      'The Big Long',
      name: 'theBigLong',
      desc: '',
      args: [],
    );
  }

  /// `Aggressive Growth`
  String get aggressiveGrowth {
    return Intl.message(
      'Aggressive Growth',
      name: 'aggressiveGrowth',
      desc: '',
      args: [],
    );
  }

  /// `Best Projects`
  String get bestProjects {
    return Intl.message(
      'Best Projects',
      name: 'bestProjects',
      desc: '',
      args: [],
    );
  }

  /// `Strategy 2022`
  String get strategy {
    return Intl.message(
      'Strategy 2022',
      name: 'strategy',
      desc: '',
      args: [],
    );
  }

  /// `Coin Lists`
  String get coinList {
    return Intl.message(
      'Coin Lists',
      name: 'coinList',
      desc: '',
      args: [],
    );
  }

  /// `Trending`
  String get trending {
    return Intl.message(
      'Trending',
      name: 'trending',
      desc: '',
      args: [],
    );
  }

  /// `Watchlist`
  String get watchlist {
    return Intl.message(
      'Watchlist',
      name: 'watchlist',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
