import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskComponent extends StatelessWidget {
  const TaskComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 736.0,
      height: 72.0,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0XFF262626),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 18,
            height: 18,
            child: TextButton(
              onPressed: () => {},
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0XFF5E60CE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      width: 2.0,
                      color: Color(0XFF5E60CE),
                    ),
                  ),
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 10,
                  )),
              child: const Text(
                "\u2713",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              "Nome da Tarefa",
              style: GoogleFonts.inter()
            ),
          ),
        ],
      ),
    );
  }
}
