import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shimmer/shimmer.dart';

class LoadingLanguageTile extends StatelessWidget {
  const LoadingLanguageTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).dialogBackgroundColor,
      highlightColor: Theme.of(context).highlightColor,
      child: ListTile(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 14,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
        ),
        subtitle: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 14,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
        ),
        leading: const CircleAvatar(),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(MdiIcons.chevronRight),
          ],
        ),
      ),
    );
  }
}
