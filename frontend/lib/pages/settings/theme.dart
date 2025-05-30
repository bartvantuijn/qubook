import 'package:flutter/material.dart';
import 'package:qubook/styles/text.dart';
import 'package:qubook/utilities/notifiers.dart';
import 'package:qubook/widgets/bar.dart';
import 'package:qubook/widgets/gradient.dart';
import 'package:qubook/widgets/navigation.dart';

class ThemeSettingsPage extends StatelessWidget {
  const ThemeSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: themeNotifier, builder: (context, value, child) {
      return GradientWidget(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: const BarWidget(
            title: 'Theme',
            actions: false,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RadioListTile<ThemeMode>(
                    title: const Text('System', style: AppText.bold),
                    value: ThemeMode.system,
                    groupValue: value,
                    onChanged: (mode) {
                      themeNotifier.value = mode!;
                    },
                  ),

                  RadioListTile<ThemeMode>(
                    title: const Text('Light', style: AppText.bold),
                    value: ThemeMode.light,
                    groupValue: value,
                    onChanged: (mode) {
                      themeNotifier.value = mode!;
                    },
                  ),

                  RadioListTile<ThemeMode>(
                    title: const Text('Dark', style: AppText.bold),
                    value: ThemeMode.dark,
                    groupValue: value,
                    onChanged: (mode) {
                      themeNotifier.value = mode!;
                    },
                  ),
                ]
              )
            )
          )
        )
      );
    });
  }
}