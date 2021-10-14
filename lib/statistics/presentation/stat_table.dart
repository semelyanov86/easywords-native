import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:words_native/words/core/domain/word.dart';

class StatTable extends StatelessWidget {
  final List<Word> words;

  const StatTable({
    Key? key,
    required this.words,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: words
          .map(
            (word) => ListTile(
              title: Text(word.original),
              subtitle: Text(
                word.translated,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(MdiIcons.eyeCheck),
                  Text(
                    word.views.toString(),
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
