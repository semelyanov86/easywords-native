import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/presentation/app_bar.dart';
import 'package:words_native/core/presentation/drawer_widget.dart';
import 'package:words_native/profile/domain/user.dart';
import 'package:words_native/profile/presentation/user_info_row.dart';
import 'package:words_native/profile/shared/providers.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, _) {
    User user = context.read(profileNotifierProvider).user.entity;

    return Scaffold(
        appBar: const AppBarWidget(
          header: 'Profile page',
          showBackButton: true,
        ),
        drawer: const DrawerWidget(),
        body: Padding(
            padding: const EdgeInsets.all(1.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('User profile information page'),
                  ),
                  CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(
                      user.profilePathSmall.isEmpty
                          ? 'https://easywordsapp.ru/images/easywords.png'
                          : user.profilePathSmall,
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  Divider(
                    height: 25,
                  ),
                  DataTable(
                    columns: [
                      const DataColumn(
                        label: Text('Parameter'),
                      ),
                      DataColumn(
                        label: Text('Value'),
                      ),
                    ],
                    rows: [
                      UserInfoRow(label: 'User ID', value: user.id.toString())
                          .generate(),
                      UserInfoRow(label: 'Name', value: user.name).generate(),
                      UserInfoRow(label: 'Email', value: user.email).generate(),
                      UserInfoRow(
                              label: 'Created At',
                              value: user.created_at.toString())
                          .generate(),
                      UserInfoRow(
                              label: 'Updated At',
                              value: user.updated_at.toString())
                          .generate(),
                    ],
                  ),
                ],
              ),
            )));
  }
}
