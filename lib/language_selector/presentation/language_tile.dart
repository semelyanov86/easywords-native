import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:words_native/core/presentation/routes/app_router.gr.dart';
import 'package:words_native/global_settings/domain/translation_directions.dart';

class LanguageTile extends StatelessWidget {
  final TranslationDirections direction;

  const LanguageTile({
    Key? key,
    required this.direction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(direction.original + ' -> ' + direction.main),
      subtitle: Text(
        direction.description ?? '',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: Icon(
        direction.icon,
        color: Colors.green,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(MdiIcons.chevronRight),
        ],
      ),
      onTap: () {
        AutoRouter.of(context).push(
          CardsListRoute(
            direction: direction,
          ),
        );
      },
    );
  }
}
