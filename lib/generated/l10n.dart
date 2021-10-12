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

  /// `EasyWords App`
  String get title {
    return Intl.message(
      'EasyWords App',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Изменить пароль`
  String get ChangePassword {
    return Intl.message(
      'Изменить пароль',
      name: 'ChangePassword',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get Profile {
    return Intl.message(
      'Profile',
      name: 'Profile',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get Settings {
    return Intl.message(
      'Settings',
      name: 'Settings',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get Statistics {
    return Intl.message(
      'Statistics',
      name: 'Statistics',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get Logout {
    return Intl.message(
      'Logout',
      name: 'Logout',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'Profile page' key

  // skipped getter for the 'Profile Detail Info' key

  /// `Field`
  String get field {
    return Intl.message(
      'Field',
      name: 'field',
      desc: '',
      args: [],
    );
  }

  /// `Value`
  String get value {
    return Intl.message(
      'Value',
      name: 'value',
      desc: '',
      args: [],
    );
  }

  /// `Created At`
  String get created_at {
    return Intl.message(
      'Created At',
      name: 'created_at',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `ID`
  String get id {
    return Intl.message(
      'ID',
      name: 'id',
      desc: '',
      args: [],
    );
  }

  /// `User Name`
  String get name {
    return Intl.message(
      'User Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Updated At`
  String get updated_at {
    return Intl.message(
      'Updated At',
      name: 'updated_at',
      desc: '',
      args: [],
    );
  }

  /// `Choose user`
  String get choose_user {
    return Intl.message(
      'Choose user',
      name: 'choose_user',
      desc: '',
      args: [],
    );
  }

  /// `Please choose user and press save button`
  String get choose_user_helper {
    return Intl.message(
      'Please choose user and press save button',
      name: 'choose_user_helper',
      desc: '',
      args: [],
    );
  }

  /// `Number of words learn at once`
  String get paginate {
    return Intl.message(
      'Number of words learn at once',
      name: 'paginate',
      desc: '',
      args: [],
    );
  }

  /// `Default language to learn`
  String get default_language {
    return Intl.message(
      'Default language to learn',
      name: 'default_language',
      desc: '',
      args: [],
    );
  }

  /// `Show only starred`
  String get starred_enabled {
    return Intl.message(
      'Show only starred',
      name: 'starred_enabled',
      desc: '',
      args: [],
    );
  }

  /// `Show known words`
  String get known_enabled {
    return Intl.message(
      'Show known words',
      name: 'known_enabled',
      desc: '',
      args: [],
    );
  }

  /// `Show fresh first`
  String get fresh_first {
    return Intl.message(
      'Show fresh first',
      name: 'fresh_first',
      desc: '',
      args: [],
    );
  }

  /// `Show imported words`
  String get show_imported {
    return Intl.message(
      'Show imported words',
      name: 'show_imported',
      desc: '',
      args: [],
    );
  }

  /// `Show shared words`
  String get show_shared {
    return Intl.message(
      'Show shared words',
      name: 'show_shared',
      desc: '',
      args: [],
    );
  }

  /// `Latest First`
  String get latest_first {
    return Intl.message(
      'Latest First',
      name: 'latest_first',
      desc: '',
      args: [],
    );
  }

  /// `For starting choose language`
  String get chooseLanguage {
    return Intl.message(
      'For starting choose language',
      name: 'chooseLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Translate word`
  String get header {
    return Intl.message(
      'Translate word',
      name: 'header',
      desc: '',
      args: [],
    );
  }

  /// `Start translating words!`
  String get headline {
    return Intl.message(
      'Start translating words!',
      name: 'headline',
      desc: '',
      args: [],
    );
  }

  /// `Please try to translate word`
  String get headline2 {
    return Intl.message(
      'Please try to translate word',
      name: 'headline2',
      desc: '',
      args: [],
    );
  }

  /// `Try to translate word by yourself. Then turn card.`
  String get intro {
    return Intl.message(
      'Try to translate word by yourself. Then turn card.',
      name: 'intro',
      desc: '',
      args: [],
    );
  }

  /// `No words for learning. Add new words and try to update list.`
  String get no_items {
    return Intl.message(
      'No words for learning. Add new words and try to update list.',
      name: 'no_items',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Add to star`
  String get star {
    return Intl.message(
      'Add to star',
      name: 'star',
      desc: '',
      args: [],
    );
  }

  /// `Remove Star`
  String get unstar {
    return Intl.message(
      'Remove Star',
      name: 'unstar',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Prev`
  String get prev {
    return Intl.message(
      'Prev',
      name: 'prev',
      desc: '',
      args: [],
    );
  }

  /// `Turn`
  String get show {
    return Intl.message(
      'Turn',
      name: 'show',
      desc: '',
      args: [],
    );
  }

  /// `Got it!`
  String get know {
    return Intl.message(
      'Got it!',
      name: 'know',
      desc: '',
      args: [],
    );
  }

  /// `Learn Again!`
  String get unknown {
    return Intl.message(
      'Learn Again!',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'update-words' key

  /// `Add to dictionary`
  String get create_header {
    return Intl.message(
      'Add to dictionary',
      name: 'create_header',
      desc: '',
      args: [],
    );
  }

  /// `Quick create new word`
  String get short {
    return Intl.message(
      'Quick create new word',
      name: 'short',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'fill-data' key

  /// `Original word`
  String get original {
    return Intl.message(
      'Original word',
      name: 'original',
      desc: '',
      args: [],
    );
  }

  /// `Translated word`
  String get translated {
    return Intl.message(
      'Translated word',
      name: 'translated',
      desc: '',
      args: [],
    );
  }

  /// `When done`
  String get done_at {
    return Intl.message(
      'When done',
      name: 'done_at',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Number of views`
  String get views {
    return Intl.message(
      'Number of views',
      name: 'views',
      desc: '',
      args: [],
    );
  }

  /// `Your activity in learning language`
  String get statistics_header {
    return Intl.message(
      'Your activity in learning language',
      name: 'statistics_header',
      desc: '',
      args: [],
    );
  }

  /// `Total number of words`
  String get all {
    return Intl.message(
      'Total number of words',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `In starred`
  String get starred {
    return Intl.message(
      'In starred',
      name: 'starred',
      desc: '',
      args: [],
    );
  }

  /// `Number of not learned words`
  String get not_dones {
    return Intl.message(
      'Number of not learned words',
      name: 'not_dones',
      desc: '',
      args: [],
    );
  }

  /// `Number of known words`
  String get dones {
    return Intl.message(
      'Number of known words',
      name: 'dones',
      desc: '',
      args: [],
    );
  }

  /// `Total views`
  String get total_views {
    return Intl.message(
      'Total views',
      name: 'total_views',
      desc: '',
      args: [],
    );
  }

  /// `Number of users`
  String get users_count {
    return Intl.message(
      'Number of users',
      name: 'users_count',
      desc: '',
      args: [],
    );
  }

  /// `Viewed in this month`
  String get updated_this_month {
    return Intl.message(
      'Viewed in this month',
      name: 'updated_this_month',
      desc: '',
      args: [],
    );
  }

  /// `Viewed today`
  String get updated_today {
    return Intl.message(
      'Viewed today',
      name: 'updated_today',
      desc: '',
      args: [],
    );
  }

  /// `Most viewed words`
  String get most_viewed {
    return Intl.message(
      'Most viewed words',
      name: 'most_viewed',
      desc: '',
      args: [],
    );
  }

  /// `Added today`
  String get added_today {
    return Intl.message(
      'Added today',
      name: 'added_today',
      desc: '',
      args: [],
    );
  }

  /// `List of known words`
  String get known_list {
    return Intl.message(
      'List of known words',
      name: 'known_list',
      desc: '',
      args: [],
    );
  }

  /// `Go back`
  String get go_back {
    return Intl.message(
      'Go back',
      name: 'go_back',
      desc: '',
      args: [],
    );
  }

  /// `Change password`
  String get password_header {
    return Intl.message(
      'Change password',
      name: 'password_header',
      desc: '',
      args: [],
    );
  }

  /// `Here you can change user password`
  String get password_short {
    return Intl.message(
      'Here you can change user password',
      name: 'password_short',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'password_fill-data' key

  /// `Current password`
  String get current_password {
    return Intl.message(
      'Current password',
      name: 'current_password',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get password {
    return Intl.message(
      'New password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get password_confirmation {
    return Intl.message(
      'Confirm password',
      name: 'password_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Do not have time for adding new words? Just import most popular words for your default language!`
  String get import_header {
    return Intl.message(
      'Do not have time for adding new words? Just import most popular words for your default language!',
      name: 'import_header',
      desc: '',
      args: [],
    );
  }

  /// `Import Words!`
  String get import_button {
    return Intl.message(
      'Import Words!',
      name: 'import_button',
      desc: '',
      args: [],
    );
  }

  /// `Word added from samples list`
  String get from_sample {
    return Intl.message(
      'Word added from samples list',
      name: 'from_sample',
      desc: '',
      args: [],
    );
  }

  /// `Word added from other user`
  String get from_user {
    return Intl.message(
      'Word added from other user',
      name: 'from_user',
      desc: '',
      args: [],
    );
  }

  /// `You are not online. Some information may be outdated.`
  String get offline_info {
    return Intl.message(
      'You are not online. Some information may be outdated.',
      name: 'offline_info',
      desc: '',
      args: [],
    );
  }

  /// `There was a connection error when marking this word as viewed`
  String get error_marking_viewed {
    return Intl.message(
      'There was a connection error when marking this word as viewed',
      name: 'error_marking_viewed',
      desc: '',
      args: [],
    );
  }

  /// `There was an error in sharing word. Maybe word already exists.`
  String get sharing_error {
    return Intl.message(
      'There was an error in sharing word. Maybe word already exists.',
      name: 'sharing_error',
      desc: '',
      args: [],
    );
  }

  /// `Error during sharing`
  String get sharing_error_header {
    return Intl.message(
      'Error during sharing',
      name: 'sharing_error_header',
      desc: '',
      args: [],
    );
  }

  /// `Created new word with ID: `
  String get creation_message {
    return Intl.message(
      'Created new word with ID: ',
      name: 'creation_message',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Successfully mark starring with ID: `
  String get starring_notification {
    return Intl.message(
      'Successfully mark starring with ID: ',
      name: 'starring_notification',
      desc: '',
      args: [],
    );
  }

  /// `Connection error when trying to mark word as starred: `
  String get starring_error {
    return Intl.message(
      'Connection error when trying to mark word as starred: ',
      name: 'starring_error',
      desc: '',
      args: [],
    );
  }

  /// `Connection error when trying to mark word as learned: `
  String get learned_error {
    return Intl.message(
      'Connection error when trying to mark word as learned: ',
      name: 'learned_error',
      desc: '',
      args: [],
    );
  }

  /// `Connection error when trying to delete word: `
  String get delete_error {
    return Intl.message(
      'Connection error when trying to delete word: ',
      name: 'delete_error',
      desc: '',
      args: [],
    );
  }

  /// `Word successfully deleted with id: `
  String get delete_info {
    return Intl.message(
      'Word successfully deleted with id: ',
      name: 'delete_info',
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
      Locale.fromSubtags(languageCode: 'ru'),
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
