import 'package:flutter/material.dart';
import 'package:app_reto1_valtx/theme/colors_general.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text(
            'Monthly statistics',
            style: TextStyle(color: primaryColor, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 1.0, right: 10.0, left: 10.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            color: const Color.fromARGB(255, 86, 32, 180),
            elevation: 10.0,
            child: Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://img.freepik.com/free-photo/digital-world-map-hologram-blue-background_1379-900.jpg?w=1060&t=st=1666321517~exp=1666322117~hmac=aa9fbd3a9dd4f9e0be3f9839079cd48113ab44889d5216babf1ea9a41df7584c'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                children: [
                  ListTile(
                    contentPadding:
                        const EdgeInsets.only(top: 10.0, left: 20.0),
                    title: const Text(
                      '28,237',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: const Text(
                        'Successful treatments',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 20.0),
                      ),
                    ),
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.only(top: 10.0, left: 20.0),
                    title: Text(
                      '4.7% than previous month',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
