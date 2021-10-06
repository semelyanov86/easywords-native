import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:words_native/auth/shared/providers.dart';

class AppBarWidget extends ConsumerWidget implements PreferredSizeWidget {
  final String header;
  const AppBarWidget({Key? key, required this.header}) : super(key: key);

  @override
  AppBar build(BuildContext context, _) {
    return AppBar(
      title: Text(header),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {
              context.read(authNotifierProvider.notifier).signOut();
            },
            icon: const Icon(MdiIcons.plusCircleOutline))
      ],
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
