import 'package:flutter/material.dart';

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
      
      backgroundColor: Colors.redAccent,
      body: SafeArea(
        
        child: Column(
          children: [

            CircleAvatar(
              radius: 50, 
              backgroundImage: NetworkImage('https://github.com/peagape.png'),
            ),

            Text('Flávio Rocha', style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),)
          ],


        ),
      ),

    );
  }
}



class CorpoMeuApp {


  
}