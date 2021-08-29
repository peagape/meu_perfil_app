import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Cardsmenu {
  String? texto;
  IconData? xicone;
  double? szfonte;
  Color? bgcolor;
  Color? fontcor;


  Cardsmenu(
      {this.texto, this.xicone, this.szfonte, this.bgcolor, this.fontcor});


  show(_urli){
 
    return Container(
      color: this.bgcolor,
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Icon(
            this.xicone,
            size: 25,
            color: Color.fromARGB(255, 13, 17, 55),
          ),
          SizedBox(
            width: 10.0,
          ),
          GestureDetector(
            onTap: () => {

               print('Item Clikado'),
               
               if (_urli != '') { _launchURL(_urli), }
              //Navigator.pushNamed(context, "myRoute");
             
            },
            child: Text(
              '$texto',
              style: GoogleFonts.openSans(
                  fontStyle: FontStyle.normal,
                  color: this.fontcor,
                  fontSize: this.szfonte,
                  letterSpacing: 1.0),
            ),
          ),
        ],
      ),
    );

  }


void _launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

}

//Cardsmenu meusCards = Cardsmenu(texto: 'flaviorocha.dev@gmail.com',xicone: Icons.mail,szfonte: 16.0,
//   bgcolor: Colors.white, fontcor: Colors.black87);
