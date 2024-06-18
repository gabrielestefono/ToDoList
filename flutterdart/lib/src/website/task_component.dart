import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                ),
              ),
              child: const Text(
                "\u2713",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              child: Text("Nome da Tarefa",
                  style: GoogleFonts.inter(
                    color: Colors.white,
                  )),
            ),
          ),
          SizedBox(
            height: 30,
            width: 30,
            child: TextButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(EdgeInsets.zero),
              ),
              child: SizedBox(
                width: 20,
                height: 20,
                child: SvgPicture.asset("assets/icons/edit.svg"),
              ),
              onPressed: () => {},
            ),
          ),
          SizedBox(
            height: 30,
            width: 30,
            child: TextButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(EdgeInsets.zero),
              ),
              child: SizedBox(
                width: 16,
                height: 16,
                child: SvgPicture.asset("assets/icons/lixo.svg"),
              ),
              onPressed: () => {},
            ),
          ),
        ],
      ),
    );
  }
}
