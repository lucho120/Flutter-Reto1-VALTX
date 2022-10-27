import 'package:app_reto1_valtx/theme/colors_general.dart';
import 'package:flutter/material.dart';

class Doctors extends StatelessWidget {
  const Doctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text(
            'Top Doctors',
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
        ),
        SizedBox(
          height: 200.0,
          child: ListView(
            padding: const EdgeInsets.all(0.0),
            scrollDirection: Axis.vertical,
            children: [
              CardDoctor(
                  urlImage:
                      'https://cdn-icons-png.flaticon.com/128/2785/2785482.png',
                  nameDoctor: 'DR. Hernandez Marcelo',
                  speciality: 'Therapist',
                  score: '4.96'),
              CardDoctor(
                  urlImage:
                      'https://cdn-icons-png.flaticon.com/128/3304/3304567.png',
                  nameDoctor: 'DR. Perez María',
                  speciality: 'Cardiologist',
                  score: '4.93'),
              CardDoctor(
                  urlImage:
                      'https://cdn-icons-png.flaticon.com/128/2785/2785544.png',
                  nameDoctor: 'DR. Huancas Jose',
                  speciality: 'Cardiologist',
                  score: '4.23')
            ],
          ),
        ),
      ],
    );
  }

  Widget CardDoctor(
      {required String urlImage,
      required String nameDoctor,
      required String speciality,
      required String score}) {
    return Card(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(urlImage),
              radius: 30.0,
            ),
            Container(
              margin: const EdgeInsets.only(left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameDoctor,
                    style: const TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(126, 125, 125, 1)),
                  ),
                  Text(
                    speciality,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: primaryColor,
                      ),
                      Text(
                        score,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
