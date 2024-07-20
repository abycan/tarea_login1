import 'package:flutter/material.dart';
import 'package:tarea_login/src/Registrar.dart';
import 'package:tarea_login/src/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
    
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
image: DecorationImage(image: AssetImage("images/image4.jpeg"),
fit: BoxFit.cover
),
          ),
          child: Center(
            child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget> [

 titulo(),
 const Login(),
 const BotonRegistrar(),

],


            ),

          ) ,
        )
      ),

    );
  }
}

Widget titulo(){
  return const Text(
    " SING IN",
    style: TextStyle(fontSize: 30,
    color: Color.fromARGB(255, 222, 211, 211),
    fontFamily: 'fuente1'
    ),
  );
}

class BotonRegistrar extends StatelessWidget {
  const BotonRegistrar({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
    
    onPressed: ()=>{
      Navigator.push(context,
        MaterialPageRoute(builder: (context)=>const Registrar())
        )
    },
  
  child:const Text("Iniciar"),
  ) ;
  }
}