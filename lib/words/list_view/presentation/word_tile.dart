import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:words_native/core/presentation/toasts.dart';
import 'package:words_native/generated/l10n.dart';
import 'package:words_native/words/core/domain/word.dart';
import 'package:words_native/words/core/shared/providers.dart';

class WordTile extends StatefulWidget {
  final Word word;

  const WordTile({
    Key? key,
    required this.word,
  }) : super(key: key);

  @override
  _WordTileState createState() => _WordTileState();
}

class _WordTileState extends State<WordTile> {
  late String? done_date;

  @override
  void initState() {
    super.initState();
    done_date = widget.word.done_at;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.word.original),
      subtitle: Text(
        widget.word.translated,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: IconButton(
        icon: Icon(
          MdiIcons.school,
          color: done_date == null
              ? Theme.of(context).accentColor
              : Theme.of(context).errorColor,
        ),
        onPressed: () {
          Word copyWord = widget.word.copyWith(done_at: done_date);
          context.read(paginatedWordsNotifier).onClickLearn(copyWord);
          done_date == null
              ? showSuccessToast(
                  S.of(context).mark_done + widget.word.id.toString(), context)
              : showSuccessToast(
                  S.of(context).mark_undone + widget.word.id.toString(),
                  context);
          setState(() {
            if (done_date == null) {
              done_date = DateTime.now().toString();
            } else {
              done_date = null;
            }
          });
        },
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(MdiIcons.eyeCheck),
          Text(
            widget.word.views.toString(),
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
      onTap: () {},
    );
  }
}
