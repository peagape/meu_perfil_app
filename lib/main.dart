import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Meu Perfil',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomeMeuPerfil(),
    );
  }
}

class HomeMeuPerfil extends StatefulWidget {
  HomeMeuPerfil({Key? key}) : super(key: key);

  @override
  _HomeMeuPerfilState createState() => _HomeMeuPerfilState();
}

class _HomeMeuPerfilState extends State<HomeMeuPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://github.com/peagape.png'),
              ),
            ),
            Text(
              'Flávio Rocha',
              style: GoogleFonts.bebasNeue(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 25),
            ),
            Text(
              '< Programador />',
              style: GoogleFonts.sourceCodePro(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: 2.0),
            ),
            SizedBox(
              //width: 100, height: 2,
              child: Container(
                height: 2,
                color: Colors.white12,
                margin: EdgeInsets.all(20),
              ),
            ),
           
           
           //função personaliza. Texto , Icone, textSize, bgColor, TextColor
            showContacts('Zap: 119830173XX', Icons.phone_android, 18.0, Colors.white, Colors.black87),

            showContacts('github.com/peagape', Icons.web, 18.0, Colors.white, Colors.black87),

            showContacts('flaviorocha.dev@gmail.com', Icons.mail, 16.0, Colors.white, Colors.black87),
            
          ],
        ),
      ),
    );
  }
}


showContacts(String texto, IconData xicone, double szfonte, Color bgcolor, Color fontcor) {
    return Container(
      color: bgcolor,
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Icon(
            xicone,
            size: 25,
            color: Colors.deepPurpleAccent,
          ),
          SizedBox(
            width: 10.0,
          ),
          GestureDetector(
            onTap: () => {
              //Navigator.pushNamed(context, "myRoute");
              print('Abre o email')
              },
            child: Text(
              '$texto',
              style: GoogleFonts.openSans(
                  fontStyle: FontStyle.normal,
                  color: fontcor,
                  fontSize: szfonte,
                  letterSpacing: 2.0),
            ),
          ),
        ],
      ),
    );
  }

