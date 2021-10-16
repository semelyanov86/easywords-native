import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/presentation/app_bar.dart';
import 'package:words_native/core/presentation/drawer_widget.dart';
import 'package:words_native/core/presentation/toasts.dart';
import 'package:words_native/generated/l10n.dart';
import 'package:words_native/profile/shared/providers.dart';

class ChooseUserPage extends StatefulWidget {
  const ChooseUserPage({
    Key? key,
  }) : super(key: key);

  @override
  _ChooseUserPageState createState() {
    return _ChooseUserPageState();
  }
}

class _ChooseUserPageState extends State<ChooseUserPage> {
  final _formKey = GlobalKey<FormState>();
  int? _userId = null;

  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context.read(shortUserNotifierProvider.notifier).getUsers(),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      /*onChange: (context, state) {},
      provider: shortUserNotifierProvider,*/
      child: Scaffold(
        appBar: AppBarWidget(
          header: S.of(context).choose_user,
          showBackButton: true,
        ),
        drawer: const DrawerWidget(),
        body: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    icon: const Icon(Icons.supervised_user_circle),
                    labelText: S.of(context).select_user,
                  ),
                  items: context
                      .read(shortUserNotifierProvider.notifier)
                      .getUsersList()
                      .map((user) {
                    return DropdownMenuItem(
                      value: user.id,
                      child: Text(user.name),
                    );
                  }).toList(),
                  onChanged: (user) {
                    setState(() {
                      _userId = user as int;
                    });
                  },
                  value: _userId,
                  validator: (val) {
                    return val == null ? S.of(context).choose_user_error : null;
                  },
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                if (_userId == 0 || _userId == null) {
                  showNoConnectionToast(
                      S.of(context).choose_user_error, context);
                } else {
                  Navigator.pop(context, _userId);
                }
              },
              child: Text(
                S.of(context).share_with_user,
                style: const TextStyle(fontSize: 30.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
