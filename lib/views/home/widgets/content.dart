import 'package:app_reto1_valtx/views/home/widgets/doctors.dart';
import 'package:flutter/material.dart';
import 'package:app_reto1_valtx/views/home/widgets/specialities.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [Specialities(), Doctors()],
    );
  }
}
