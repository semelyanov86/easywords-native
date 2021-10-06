import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:words_native/core/presentation/app_bar.dart';
import 'package:words_native/global_settings/domain/translation_directions.dart';
import 'package:words_native/language_selector/presentation/no_results_display.dart';
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
          ),
          body: state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
              loadSuccess: (_) {
                if (serviceModel.isEmpty()) {
                  return const NoResultsDisplay(
                    message: 'These are no words to learn.',
                  );
                }
                return Center(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(MdiIcons.book),
                          title: const Text('Translate word!'),
                          subtitle: Text(
                            'Please try to translate word',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'After translating you can learn it.',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
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
                              textColor: const Color(0xFF6200EE),
                              onPressed: () {
                                setState(() {
                                  flipped = !flipped;
                                });
                              },
                              child: const Text('FLIP'),
                            ),
                            FlatButton(
                              textColor: const Color(0xFF6200EE),
                              onPressed: () {
                                serviceNotifier.setNextWord();
                              },
                              child: const Text('NEXT'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
