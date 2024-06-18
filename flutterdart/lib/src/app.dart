import 'package:flutter/material.dart';
import 'package:flutterdart/src/website/header_component.dart';
import 'package:flutterdart/src/website/form_component.dart';
import 'package:flutterdart/src/website/task_component.dart';
import 'package:flutterdart/src/website/task_list_component.dart';
import 'settings/settings_controller.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0XFF1A1A1A),
        alignment: Alignment.center,
        child: Column(
          children: [
            const HeaderComponent(),
            FormComponent(),
            const TaskListComponent()
          ],
        ),
      ),
    );
  }
}
