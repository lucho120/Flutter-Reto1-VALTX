import 'package:flutter/material.dart';
import 'package:app_reto1_valtx/theme/colors_general.dart';

class Specialities extends StatelessWidget {
  const Specialities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text(
            'Specialties',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20.0),
          ),
          trailing: Text(
            'See all',
            style: TextStyle(color: Colors.grey, fontSize: 20.0),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _cardSpeciality(context,
                icon: const Icon(Icons.healing_rounded),
                speciality: 'Traumatology'),
            _cardSpeciality(context,
                icon: const Icon(Icons.medical_services_rounded),
                speciality: 'Epidemiology'),
            _cardSpeciality(context,
                icon: const Icon(Icons.monitor_heart),
                speciality: 'Cardiology'),
          ],
        ),
      ],
    );
  }

  // metodo que devuelve una card para la parte de especialidades
  Widget _cardSpeciality(context,
      {required Icon icon, required String speciality}) {
    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 5.0,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Icon(
                icon.icon,
                size: 30.0,
                color: primaryColor,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Text(speciality)),
            ],
          ),
        ));
  }
}
