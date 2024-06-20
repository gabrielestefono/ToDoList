import 'package:flutter/material.dart';
import 'package:flutterdart/src/website/task_component.dart';
import 'package:flutterdart/src/website/tasklist/info.dart';

class TaskListComponent extends StatelessWidget {
  const TaskListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 800;
    final margin = isSmallScreen ? 32.0 : 0.0;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: margin),
      child: SizedBox(
        width: isSmallScreen ? double.infinity : 736,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0XFF333333), width: 1.0),
                ),
              ),
              padding: const EdgeInsets.only(bottom: 20.0),
              child: isSmallScreen
                  ? const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InfoComponent(texto: "Tarefas Criadas", primario: true),
                        InfoComponent(texto: "Concluídas", padding: 20)
                      ],
                    )
                  : const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InfoComponent(texto: "Tarefas Criadas", primario: true),
                        InfoComponent(texto: "Concluídas")
                      ],
                    ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: const Column(
                children: [
                  TaskComponent(),
                  SizedBox(height: 12),
                  TaskComponent(),
                  SizedBox(height: 12),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
