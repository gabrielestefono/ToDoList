import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TaskListComponent extends StatelessWidget {
  const TaskListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XAA000000),
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Center(
        child: SizedBox(
          width: 126,
          height: 48,
          child: SvgPicture.asset("assets/icons/logo.svg"),
        ),
      ),
    );
  }
}
