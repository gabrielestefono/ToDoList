import 'package:flutter/material.dart';
import 'package:flutterdart/src/website/task_component.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskListComponent extends StatelessWidget {
  const TaskListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 736,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color(0XFF333333), width: 1.0))),
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Tarefas criadas",
                      style: GoogleFonts.inter(
                          color: const Color(0XFF4EA8DE),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      padding: const EdgeInsets.only(
                          top: 2, left: 8, right: 8, bottom: 2),
                      decoration: const BoxDecoration(
                          color: Color(0XFF333333),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Text(
                        "18",
                        style: GoogleFonts.inter(
                          color: const Color(0XFFFFFFFF),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Concluídas",
                      style: GoogleFonts.inter(
                          color: const Color(0XFF8284FA),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      padding: const EdgeInsets.only(
                          top: 2, left: 8, right: 8, bottom: 2),
                      decoration: const BoxDecoration(
                          color: Color(0XFF333333),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Text(
                        "0",
                        style: GoogleFonts.inter(
                          color: const Color(0XFFFFFFFF),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
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
                TaskComponent(),
                SizedBox(height: 12),
                TaskComponent(),
                SizedBox(height: 12),
                TaskComponent(),
                SizedBox(height: 12),
                TaskComponent(),
                SizedBox(height: 12),
                TaskComponent(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
