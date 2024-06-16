import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FormComponent extends StatelessWidget {
  FormComponent({super.key});

  final _taskKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -26.0),
      child: SizedBox(
        width: 736,
        height: 92,
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Form(
                      key: _taskKey,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(top: 20.5, right: 16.0, bottom: 20.5, left: 16.0),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          hintText: "Adicione uma nova tarefa",
                          fillColor: const Color(0XFF333333),
                          filled: true,
                          hintStyle: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              color: Color(0X55FFFFFF),
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontWeight: FontWeight.w400,
                              fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8.00),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          const Color(0xFF1E6F9F),
                        ),
                        padding: WidgetStateProperty.all(
                          const EdgeInsets.all(16),
                        ),
                        fixedSize: WidgetStateProperty.all(
                          const Size(90.0, 54.0),
                        ),
                        shape: WidgetStateProperty.all(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      onPressed: () => {},
                      child: Row(
                        children: [
                          Text(
                            "Criar",
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 7),
                            child: SizedBox(
                              width: 16,
                              height: 16,
                              child: SvgPicture.asset("assets/icons/plus.svg"),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
