import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:words_native/core/presentation/app_bar.dart';
import 'package:words_native/core/presentation/drawer_widget.dart';
import 'package:words_native/generated/l10n.dart';
import 'package:words_native/global_settings/domain/translation_directions.dart';
import 'package:words_native/language_selector/presentation/no_results_display.dart';
import 'package:words_native/words/card/application/cards_notifier.dart';
import 'package:words_native/words/card/presentation/card_tile_widget.dart';
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
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  bool flipped = false;
  int index = 0;
  final FlipCardController _controller = FlipCardController();
  bool _visible = true;

  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context
          .read(cardsNotifierProvider.notifier)
          .getNextCardsPage(widget.direction.originalLanguage),
    );
    Future.microtask(
        () => context.read(cardsCalculationProvider.notifier).setDefaultData());
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
      final cardsNotifier = context.read(cardsNotifierProvider.notifier);
      Future.delayed(Duration.zero, () async {
        serviceNotifier.setWords(state.cards.entity);
      });

      return ProviderListener<CardsState>(
        onChange: (context, state) {},
        provider: cardsNotifierProvider,
        child: Scaffold(
          appBar: AppBarWidget(
            header: S.of(context).header,
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
                    _controller.toggleCard();
                  },
                  child: const Icon(Icons.flip),
                  backgroundColor: Colors.amber,
                  tooltip: S.of(context).show,
                ),
                FloatingActionButton(
                  onPressed: () {
                    if (flipped) {
                      _controller.toggleCard();
                    }
                    _visible = false;
                    Future.delayed(Duration(milliseconds: 500), () {
                      _visible = true;
                      serviceNotifier.setNextWord();
                    });
                  },
                  child: const Icon(Icons.arrow_forward),
                  backgroundColor: Colors.green,
                  tooltip: S.of(context).next,
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
                  return state.cards.entity.isEmpty
                      ? NoResultsDisplay(
                          message: S.of(context).no_items,
                          language: widget.direction.originalLanguage,
                        )
                      : const CircularProgressIndicator();
                }
                return Column(
                  children: [
                    ListTile(
                      leading: const Icon(MdiIcons.book),
                      title: Text(S.of(context).headline),
                      subtitle: Text(
                        S.of(context).headline2,
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        S.of(context).intro,
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              cardsNotifier.dropPage();
                              cardsNotifier.getNextCardsPage(
                                  widget.direction.originalLanguage);
                              serviceNotifier.setWords(state.cards.entity);
                              serviceNotifier.setDefaultData();
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.yellowAccent,
                              size: 24.0,
                            ),
                            label: Text(S.of(context).first_page),
                          ),
                          if (state.cards.isNextPageAvailable == true)
                            ElevatedButton.icon(
                              onPressed: () {
                                cardsNotifier.increasePage();
                                cardsNotifier.getNextCardsPage(
                                    widget.direction.originalLanguage);
                                serviceNotifier.setWords(state.cards.entity);
                                serviceNotifier.setDefaultData();
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.yellowAccent,
                                size: 24.0,
                              ),
                              label: Text(S.of(context).next_page),
                            )
                          else
                            Container(),
                        ],
                      ),
                    ),
                    Center(
                      child: FlipCard(
                        controller: _controller,
                        key: cardKey,
                        flipOnTouch: true,
                        onFlip: () {
                          setState(() {
                            flipped = !flipped;
                          });
                          if (flipped) {
                            cardsNotifier
                                .flipWord(serviceModel.getCurrentWord().id);
                          }
                        },
                        front: AnimatedOpacity(
                          opacity: _visible ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 500),
                          child: CardTileWidget(
                            serviceModel: serviceModel,
                            text: serviceModel
                                .getCurrentWord()
                                .getLanguageValue(
                                    widget.direction.originalLanguage),
                            onLearned: () {
                              _visible = false;
                              if (flipped) {
                                _controller.toggleCard();
                              }
                              Future.delayed(Duration(milliseconds: 500), () {
                                _visible = true;
                              });
                            },
                            flipped: false,
                          ),
                        ),
                        back: AnimatedOpacity(
                          opacity: _visible ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 500),
                          child: CardTileWidget(
                            serviceModel: serviceModel,
                            text: serviceModel
                                .getCurrentWord()
                                .getLanguageValue(
                                    widget.direction.mainLanguage),
                            onLearned: () {
                              _visible = false;
                              if (flipped) {
                                _controller.toggleCard();
                              }
                              Future.delayed(Duration(milliseconds: 500), () {
                                _visible = true;
                              });
                            },
                            flipped: true,
                          ),
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
