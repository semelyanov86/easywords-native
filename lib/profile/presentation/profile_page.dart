import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:words_native/core/presentation/app_bar.dart';
import 'package:words_native/core/presentation/drawer_widget.dart';
import 'package:words_native/profile/presentation/user_info_row.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        header: 'Profile page',
        showBackButton: true,
      ),
      drawer: DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                ListTile(
                  leading: Icon(Icons.album),
                  title: Text('User profile information page'),
                ),
                CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                    'https://easywordsapp.ru/images/easywords.png',
                  ),
                  backgroundColor: Colors.transparent,
                ),
                Divider(
                  height: 25,
                ),
                UserInfoRow(label: 'User ID', value: '16'),
                Divider(
                  height: 10,
                ),
                UserInfoRow(label: 'Name', value: 'Administrator'),
                Divider(
                  height: 10,
                ),
                UserInfoRow(label: 'Email', value: 'emelyanov86@list.ru'),
                Divider(
                  height: 10,
                ),
                UserInfoRow(label: 'Created At', value: '2021-08-05 15:16:16'),
                Divider(
                  height: 10,
                ),
                UserInfoRow(label: 'Updated At', value: '2021-08-05 15:16:16'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
