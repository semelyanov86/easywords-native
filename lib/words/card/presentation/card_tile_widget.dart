import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:words_native/core/presentation/toasts.dart';
import 'package:words_native/generated/l10n.dart';
import 'package:words_native/profile/presentation/choose_user_page.dart';
import 'package:words_native/words/card/infrastructure/cards_calculation_service.dart';
import 'package:words_native/words/core/shared/providers.dart';

class CardTileWidget extends ConsumerWidget {
  final CardsCalculationService serviceModel;
  final bool flipped;
  final String text;
  final Function onLearned;

  const CardTileWidget({
    Key? key,
    required this.serviceModel,
    required this.text,
    required this.onLearned,
    this.flipped = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader ref) {
    final serviceNotifier = context.read(cardsCalculationProvider.notifier);
    final cardsNotifier = context.read(cardsNotifierProvider.notifier);

    return Card(
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (serviceModel.getCurrentWord().starred)
                  Icon(
                    MdiIcons.star,
                    semanticLabel: S.of(context).in_starred,
                  )
                else
                  Container(),
                Text(
                  '${serviceModel.getDisplayCurrent()}/${serviceModel.words.length}',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                if (serviceModel.getCurrentWord().shared_by != null)
                  Icon(
                    MdiIcons.gift,
                    semanticLabel: S.of(context).in_shared,
                  )
                else
                  Container(),
                Text(
                  '#${serviceModel.getCurrentWord().id}',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                if (serviceModel.getCurrentWord().from_sample)
                  Icon(
                    MdiIcons.download,
                    semanticLabel: S.of(context).from_sample_word,
                  )
                else
                  Container(),
                IconButton(
                  onPressed: () {
                    cardsNotifier
                        .deleteWord(serviceModel.getCurrentWord().id)
                        .then((value) => showNoConnectionToast(
                            S.of(context).delete_info +
                                serviceModel.getCurrentWord().id.toString(),
                            context))
                        .catchError((e) {
                      showNoConnectionToast(
                          S.of(context).delete_error + e.toString(), context);
                    });

                    serviceNotifier.deleteWord();
                  },
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          ),
          ListTile(
            title: SelectableText(
              text,
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
                child: Text(S.of(context).prev),
              ),
              FlatButton(
                textColor: const Color.fromRGBO(252, 86, 3, 100),
                onPressed: () {
                  onLearned();
                  Future.delayed(Duration(milliseconds: 500), () {
                    cardsNotifier
                        .markKnown(serviceModel.getCurrentWord())
                        .catchError((e) {
                      showNoConnectionToast(
                          S.of(context).learned_error + e.toString(), context);
                    });
                    serviceNotifier.setLearned();
                  });
                },
                child: Text(serviceModel.getCurrentWord().done_at == null
                    ? S.of(context).know
                    : S.of(context).unknown),
              ),
              FlatButton(
                textColor: const Color(0xFF6200EE),
                onPressed: () {
                  cardsNotifier
                      .starWord(serviceModel.getCurrentWord())
                      .catchError((e) {
                    showNoConnectionToast(
                        S.of(context).starring_error + e.toString(), context);
                  });
                  serviceNotifier
                      .setStarred(!serviceModel.getCurrentWord().starred);
                  showNoConnectionToast(
                      S.of(context).starring_notification +
                          serviceModel.getCurrentWord().id.toString(),
                      context);
                },
                child: serviceModel.getCurrentWord().starred
                    ? Text(S.of(context).unstar)
                    : Text(S.of(context).star),
              ),
              FlatButton(
                textColor: const Color.fromRGBO(76, 128, 158, 100),
                onPressed: () async {
                  var tappedName = await Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return const ChooseUserPage();
                  }));
                  if (tappedName != null) {
                    cardsNotifier
                        .shareWord(
                            serviceModel.getCurrentWord().id, tappedName as int)
                        .then((value) => showNoConnectionToast(
                            S.of(context).creation_message +
                                value.id.toString(),
                            context))
                        .catchError((e) {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: Text(S.of(context).sharing_error_header),
                                content: Text(S.of(context).sharing_error),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: Text(S.of(context).ok),
                                  ),
                                ],
                              ));
                    });
                  }
                },
                child: Text(S.of(context).share),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
