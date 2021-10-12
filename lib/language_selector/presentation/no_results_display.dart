import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:words_native/generated/l10n.dart';
import 'package:words_native/words/core/shared/providers.dart';

class NoResultsDisplay extends StatelessWidget {
  final String message;
  final String? language;

  const NoResultsDisplay({
    Key? key,
    required this.message,
    required this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Consumer(
          builder: (context, ref, child) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  MdiIcons.emoticonPoop,
                  size: 96,
                ),
                Text(
                  message,
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                if (language != null)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20)),
                    onPressed: () {
                      context
                          .read(cardsNotifierProvider.notifier)
                          .getNextCardsPage(language ?? '');
                    },
                    child: Text(S.of(context).update_words),
                  )
                else
                  Text(S.of(context).title),
              ],
            );
          },
        ));
  }
}
