import 'package:flutter/material.dart';
import 'package:qubook/pages/settings.dart';
import 'package:qubook/styles/text.dart';
import 'package:qubook/utilities/notifiers.dart';

class BarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool actions;

  const BarWidget({super.key, this.title, this.actions = true});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: navigationNotifier, builder: (context, value, child) {
      return AppBar(
        title: Text(title ?? navigationNotifier.title, style: AppText.h1),
        actions: actions ? [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (_) => const SettingsPage()
                ),
              );
            },
          ),
        ] : null,
      );
    });
  }
}