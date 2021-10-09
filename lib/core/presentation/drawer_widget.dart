import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/auth/shared/providers.dart';
import 'package:words_native/core/presentation/routes/app_router.gr.dart';
import 'package:words_native/profile/domain/user.dart';
import 'package:words_native/profile/shared/providers.dart';

class DrawerWidget extends ConsumerWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, _) {
    User user = context.read(profileNotifierProvider).user.entity;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.lightGreen,
            ),
            child: Column(
              children: [
                Text(
                  user.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                const Divider(
                  color: Colors.transparent,
                ),
                CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                    user.profilePathSmall.isEmpty
                        ? 'https://easywordsapp.ru/images/easywords.png'
                        : user.profilePathSmall,
                  ),
                  backgroundColor: Colors.transparent,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Profile'),
            onTap: () {
              AutoRouter.of(context).push(
                const ProfileRoute(),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            onTap: () {
              AutoRouter.of(context).push(
                const SettingsRoute(),
              );
            },
            title: const Text('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.analytics),
            title: Text('Statistics'),
          ),
          ListTile(
            leading: const Icon(Icons.password),
            title: const Text('Change Password'),
            onTap: () {
              AutoRouter.of(context).push(
                const ChangePasswordRoute(),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('LogOut'),
            onTap: () => context.read(authNotifierProvider.notifier).signOut(),
          ),
        ],
      ),
    );
  }
}
