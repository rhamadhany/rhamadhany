import 'package:flutter/material.dart';
import 'package:portofolio/daftar_button_contact.dart';

class FotoProfil extends StatelessWidget {
  const FotoProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage('rhamadhany_.jpg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter.add(Alignment(0.0, 0.2)))),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Rhamadhany',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 38),
            ),
            Text(
              'Flutter Developer Jr',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 18),
            ),
            AboutMe()
          ],
        ),
      ),
    );
  }
}

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                "I'm an enthusiastic junior Flutter developer continuously striving to improve my skills. Although I'm still in the early stages, I have a solid foundation in mobile application development and a strong desire to learn. I'm seeking opportunities to contribute to innovative projects and work with a supportive team. Contact me if you're interested in my passion and potential!",
                style: TextStyle(color: Colors.black),
              ),
              DaftarButtonContact(
                dariEmail: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
