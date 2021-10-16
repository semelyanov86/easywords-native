import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/presentation/app_bar.dart';
import 'package:words_native/core/presentation/drawer_widget.dart';
import 'package:words_native/generated/l10n.dart';
import 'package:words_native/profile/domain/user.dart';
import 'package:words_native/profile/presentation/user_info_row.dart';
import 'package:words_native/profile/shared/providers.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, _) {
    User user = context.read(profileNotifierProvider).user.entity;

    return Scaffold(
        appBar: AppBarWidget(
          header: S.of(context).Profile_page,
          showBackButton: true,
        ),
        drawer: const DrawerWidget(),
        body: Padding(
            padding: const EdgeInsets.all(1.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.album),
                    title: Text(S.of(context).Profile_Detail_Info),
                  ),
                  CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(
                      user.profilePathSmall.isEmpty
                          ? 'https://easywordsapp.ru/images/easywords.png'
                          : user.profilePathSmall,
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  const Divider(
                    height: 25,
                  ),
                  DataTable(
                    columns: [
                      DataColumn(
                        label: Text(S.of(context).field),
                      ),
                      DataColumn(
                        label: Text(S.of(context).value),
                      ),
                    ],
                    rows: [
                      UserInfoRow(
                              label: S.of(context).id,
                              value: user.id.toString())
                          .generate(),
                      UserInfoRow(label: S.of(context).name, value: user.name)
                          .generate(),
                      UserInfoRow(label: S.of(context).email, value: user.email)
                          .generate(),
                      UserInfoRow(
                              label: S.of(context).created_at,
                              value: user.created_at.toString())
                          .generate(),
                      UserInfoRow(
                              label: S.of(context).updated_at,
                              value: user.updated_at.toString())
                          .generate(),
                    ],
                  ),
                ],
              ),
            )));
  }
}
