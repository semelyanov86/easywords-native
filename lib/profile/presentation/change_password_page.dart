import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:words_native/core/presentation/app_bar.dart';
import 'package:words_native/core/presentation/drawer_widget.dart';
import 'package:words_native/generated/l10n.dart';
import 'package:words_native/profile/shared/providers.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  _ChangePasswordPageState createState() {
    return _ChangePasswordPageState();
  }
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _currentPassController = TextEditingController();
  final _passController = TextEditingController();
  final _confirmPassController = TextEditingController();
  bool _hidePass = true;

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _currentPassController.dispose();
    _passController.dispose();
    _confirmPassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, provider, child) {
        return Scaffold(
          key: _scaffoldKey,
          appBar: AppBarWidget(
            header: S.of(context).password_header,
            showBackButton: true,
          ),
          drawer: const DrawerWidget(),
          body: Form(
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                const SizedBox(height: 10),
                TextFormField(
                  autofocus: true,
                  controller: _currentPassController,
                  obscureText: _hidePass,
                  maxLength: 15,
                  decoration: InputDecoration(
                    labelText: S.of(context).current_password,
                    hintText: S.of(context).current_password_desc,
                    suffixIcon: IconButton(
                      icon: Icon(
                          _hidePass ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _hidePass = !_hidePass;
                        });
                      },
                    ),
                    icon: const Icon(Icons.security),
                  ),
                  validator: _validatePassword,
                ),
                const SizedBox(height: 10),
                TextFormField(
                  autofocus: true,
                  controller: _passController,
                  obscureText: _hidePass,
                  maxLength: 15,
                  decoration: InputDecoration(
                    labelText: S.of(context).password,
                    hintText: S.of(context).password_desc,
                    suffixIcon: IconButton(
                      icon: Icon(
                          _hidePass ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _hidePass = !_hidePass;
                        });
                      },
                    ),
                    icon: const Icon(Icons.security),
                  ),
                  validator: _validatePassword,
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _confirmPassController,
                  obscureText: _hidePass,
                  maxLength: 15,
                  decoration: InputDecoration(
                    labelText: S.of(context).password_confirmation,
                    hintText: S.of(context).password_desc,
                    icon: const Icon(Icons.border_color),
                  ),
                  validator: _validatePassword,
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: _submitForm,
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    textStyle: TextStyle(color: Theme.of(context).cardColor),
                  ),
                  child: Text(S.of(context).submit),
                  //color: Colors.green,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String? _validatePassword(String? value) {
    if (_passController.text.length != 6) {
      return S.of(context).password_chars_required;
    } else if (_confirmPassController.text != _passController.text) {
      return S.of(context).password_does_not_match;
    } else if (_currentPassController == null || _currentPassController == '') {
      return S.of(context).password_required;
    } else {
      return null;
    }
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      context.read(profileNotifierProvider.notifier).updatePassword(
          _currentPassController.text,
          _passController.text,
          _confirmPassController.text);
      context.read(profileNotifierProvider).map(
          initial: (_) => Container(),
          loadInProgress: (_) => const CircularProgressIndicator(),
          loadSuccess: (_) =>
              _showMessage(message: S.of(context).password_update_success),
          loadFailure: (_) => _showMessage(
              message: S.of(context).password_update_error +
                  _.failure.errorCode.toString()));
    } else {
      _showMessage(message: S.of(context).validation_error);
    }
  }

  void _showMessage({required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 1),
        backgroundColor: Theme.of(context).errorColor,
        content: Text(
          message,
          style: TextStyle(
            color: Theme.of(context).cardColor,
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }

  void _showDialog({required String name}) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'Registration successful',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
            content: Text(
              '$name is now a verified register form',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Verified',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 18.0,
                    ),
                  ))
            ],
          );
        });
  }
}
