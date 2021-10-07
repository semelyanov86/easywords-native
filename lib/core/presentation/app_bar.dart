import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:words_native/core/presentation/routes/app_router.gr.dart';

class AppBarWidget extends ConsumerWidget implements PreferredSizeWidget {
  final String header;
  final bool showBackButton;
  const AppBarWidget(
      {Key? key, required this.header, this.showBackButton = false})
      : super(key: key);

  @override
  AppBar build(BuildContext context, _) {
    return AppBar(
      title: Text(header),
      centerTitle: true,
      leading: showBackButton
          ? IconButton(
              onPressed: () {
                AutoRouter.of(context).pop();
              },
              icon: Icon(Icons.arrow_back),
            )
          : null,
      actions: [
        IconButton(
            onPressed: () {
              AutoRouter.of(context).push(
                const CreateWordRoute(),
              );
            },
            icon: const Icon(MdiIcons.plusCircleOutline))
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
