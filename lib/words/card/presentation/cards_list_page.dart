import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:words_native/core/presentation/app_bar.dart';
import 'package:words_native/core/presentation/drawer_widget.dart';
import 'package:words_native/core/presentation/toasts.dart';
import 'package:words_native/global_settings/domain/translation_directions.dart';
import 'package:words_native/language_selector/presentation/no_results_display.dart';
import 'package:words_native/profile/presentation/choose_user_page.dart';
import 'package:words_native/words/card/application/cards_notifier.dart';
import 'package:words_native/words/core/shared/providers.dart';

class CardsListPage extends StatefulWidget {
  final TranslationDirections direction;

  const CardsListPage({
    Key? key,
    required this.direction,
  }) : super(key: key);

  @override
  _CardsListPageState createState() {
    return _CardsListPageState();
  }
}

class _CardsListPageState extends State<CardsListPage> {
  bool flipped = false;
  int index = 0;

  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context
          .read(cardsNotifierProvider.notifier)
          .getNextCardsPage(widget.direction.originalLanguage),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final state = ref(cardsNotifierProvider);
      final serviceModel = ref(cardsCalculationProvider);
      final serviceNotifier = context.read(cardsCalculationProvider.notifier);
      Future.delayed(Duration.zero, () async {
        serviceNotifier.setWords(state.cards.entity);
      });

      return ProviderListener<CardsState>(
        onChange: (context, state) {},
        provider: cardsNotifierProvider,
        child: Scaffold(
          appBar: const AppBarWidget(
            header: 'Study Mode',
            showBackButton: true,
          ),
          drawer: DrawerWidget(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      flipped = !flipped;
                    });
                    if (flipped) {
                      try {
                        context
                            .read(cardsNotifierProvider.notifier)
                            .flipWord(serviceModel.getCurrentWord().id);
                      } on Exception catch (e) {
                        showNoConnectionToast(
                            'There was a connection error when marking this word as viewed',
                            context);
                      }
                    }
                  },
                  child: const Icon(Icons.flip),
                  backgroundColor: Colors.amber,
                ),
                FloatingActionButton(
                  onPressed: () {
                    serviceNotifier.setNextWord();
                  },
                  child: const Icon(Icons.arrow_forward),
                  backgroundColor: Colors.green,
                ),
              ],
            ),
          ),
          body: state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
              loadSuccess: (_) {
                if (state.maybeWhen(
                    loadSuccess: (words, _) => serviceModel.words.isEmpty,
                    orElse: () => false)) {
                  return const NoResultsDisplay(
                    message: 'These are no words to learn.',
                  );
                }
                return Column(
                  children: [
                    ListTile(
                      leading: Icon(MdiIcons.book),
                      title: const Text('Translate word!'),
                      subtitle: Text(
                        'Please try to translate word',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'After translating you can learn it.',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Center(
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        margin: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    serviceModel.getDisplayCurrent() +
                                        '/' +
                                        serviceModel.words.length.toString(),
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                  Text(
                                    '#' +
                                        serviceModel
                                            .getCurrentWord()
                                            .id
                                            .toString(),
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      context
                                          .read(cardsNotifierProvider.notifier)
                                          .deleteWord(
                                              serviceModel.getCurrentWord().id)
                                          .then((value) => showNoConnectionToast(
                                              'Word successfully deleted with id: ' +
                                                  serviceModel
                                                      .getCurrentWord()
                                                      .id
                                                      .toString(),
                                              context))
                                          .catchError((e) {
                                        showNoConnectionToast(
                                            'Connection error when trying to delete word: ' +
                                                e.toString(),
                                            context);
                                      });

                                      serviceNotifier.deleteWord();
                                    },
                                    icon: Icon(Icons.delete),
                                  ),
                                ],
                              ),
                            ),
                            ListTile(
                              title: Text(
                                flipped
                                    ? serviceModel
                                        .getCurrentWord()
                                        .getLanguageValue(
                                            widget.direction.mainLanguage)
                                    : serviceModel
                                        .getCurrentWord()
                                        .getLanguageValue(
                                            widget.direction.originalLanguage),
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ),
                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: [
                                FlatButton(
                                  textColor: serviceModel.prev == null
                                      ? const Color.fromRGBO(90, 90, 90, 100)
                                      : const Color.fromRGBO(157, 252, 3, 100),
                                  onPressed: () {
                                    serviceNotifier.setPrevWord();
                                  },
                                  child: const Text('PREV'),
                                ),
                                FlatButton(
                                  textColor:
                                      const Color.fromRGBO(252, 86, 3, 100),
                                  onPressed: () {
                                    context
                                        .read(cardsNotifierProvider.notifier)
                                        .markKnown(
                                            serviceModel.getCurrentWord())
                                        .catchError((e) {
                                      showNoConnectionToast(
                                          'Connection error when trying to mark word as learned: ' +
                                              e.toString(),
                                          context);
                                    });
                                    serviceNotifier.setLearned();
                                  },
                                  child: Text(
                                      serviceModel.getCurrentWord().done_at ==
                                              null
                                          ? 'LEARNED!'
                                          : 'BACK TO LEARN'),
                                ),
                                FlatButton(
                                  textColor: const Color(0xFF6200EE),
                                  onPressed: () {
                                    context
                                        .read(cardsNotifierProvider.notifier)
                                        .starWord(serviceModel.getCurrentWord())
                                        .catchError((e) {
                                      showNoConnectionToast(
                                          'Connection error when trying to mark word as starred: ' +
                                              e.toString(),
                                          context);
                                    });
                                    serviceNotifier.setStarred(
                                        !serviceModel.getCurrentWord().starred);
                                    showNoConnectionToast(
                                        'Successfully mark starring with ID: ' +
                                            serviceModel
                                                .getCurrentWord()
                                                .id
                                                .toString(),
                                        context);
                                  },
                                  child: serviceModel.getCurrentWord().starred
                                      ? Text('UNSTAR')
                                      : Text('STAR'),
                                ),
                                FlatButton(
                                  textColor:
                                      const Color.fromRGBO(76, 128, 158, 100),
                                  onPressed: () async {
                                    var tappedName = await Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) {
                                      return ChooseUserPage();
                                    }));
                                    if (tappedName != null) {
                                      context
                                          .read(cardsNotifierProvider.notifier)
                                          .shareWord(
                                              serviceModel.getCurrentWord().id,
                                              tappedName as int)
                                          .then((value) => showNoConnectionToast(
                                              'Created new word with ID: ${value.id.toString()}',
                                              context))
                                          .catchError((e) {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                AlertDialog(
                                                  title: const Text(
                                                      'Error during sharing'),
                                                  content: Text(
                                                      'There was an error in sharing word. Maybe word already exists.'),
                                                  actions: <Widget>[
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              context, 'OK'),
                                                      child: const Text('OK'),
                                                    ),
                                                  ],
                                                ));
                                      });
                                    }
                                  },
                                  child: const Text('SHARE'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              loadFailure: (_) => Center(
                    child: Text(_.failure.toString()),
                  )),
        ),
      );
    });
  }
}
