import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'src/class/class.cardsmenu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu Perfil',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
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
  
  /*
  List<Cardsmenu> meusCards = [

    Cardsmenu(texto: 'flaviorocha.dev@gmail.com',xicone: Icons.mail,szfonte: 16.0,
   bgcolor: Colors.white, fontcor: Colors.black87),

   Cardsmenu(texto: 'github.com/peagape',xicone: Icons.web,szfonte: 18.0,
   bgcolor: Colors.white, fontcor: Colors.black87),
  ];
  */
@override
Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 13, 17, 55),
      body: SafeArea(
        child: ListView(
          children: 
            [
              Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(50.0),
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
        
                 //Aqui lista os cards, podendo personalizarmos atraves da class @class.cardsmenu.dart
                 //Os card tem um evento onTap, podendo passar qquer link na função 'show(meulink.com)' ou deixar vaziu para que nada aconteça.
                Cardsmenu(texto: 'flaviorocha.dev@gmail.com',xicone: Icons.mail,szfonte: 16.0, bgcolor: Color.fromARGB(255, 229, 33, 101), fontcor: Colors.white)
                .show(''),
                Cardsmenu(texto: 'https://github.com/peagape',xicone: Icons.web,szfonte: 16.0, bgcolor: Color.fromARGB(255, 229, 33, 101), fontcor: Colors.white)
                .show('https://github.com/peagape'),
                Cardsmenu(texto: 'Zap: 119830173XX',xicone: Icons.phone_android,szfonte: 16.0, bgcolor: Color.fromARGB(255, 229, 33, 101), fontcor: Colors.white)
                .show(''),
                Cardsmenu(texto: 'Instagram @aoflavio',xicone: Icons.photo, szfonte: 16.0, bgcolor: Color.fromARGB(255, 229, 33, 101), fontcor: Colors.white)
                .show('https://instagram.com/aoflavio'),
               
              ],
            ),
          ],
        ),
      ),
    );
  }

  
}

