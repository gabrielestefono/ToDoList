import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoComponent extends StatelessWidget {
  final String texto;

  final bool primario;

  final double padding;

  const InfoComponent(
      {super.key,
      required this.texto,
      this.primario = false,
      this.padding = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            texto,
            style: GoogleFonts.inter(
                color: primario
                    ? const Color(0XFF4EA8DE)
                    : const Color(0XFF8284FA),
                fontWeight: FontWeight.w500,
                fontSize: 14),
          ),
          Container(
            margin: const EdgeInsets.only(left: 8),
            padding:
                const EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 2),
            decoration: const BoxDecoration(
              color: Color(0XFF333333),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
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
    );
  }
}
