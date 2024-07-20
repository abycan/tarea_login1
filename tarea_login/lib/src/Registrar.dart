import 'package:flutter/material.dart';

class Registrar extends StatelessWidget {
  const Registrar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
image: DecorationImage(image: AssetImage("images/image1.jpeg"),
fit: BoxFit.cover
),
          ),
          child: const Center(
            child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget> [
],


            ),

          ) ,
        )
      );

      }
}
    
class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool ocultar= true;
  TextEditingController namecontroler =TextEditingController();
  var formkey= GlobalKey<FormState>();
 var contrasenaError;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
      children: [
        TextField(
      controller: namecontroler,
          decoration:const InputDecoration(
      
            hintText: " Ingrese Nombre",
            labelText: "Nombre",
            labelStyle: TextStyle(fontSize: 23, color: Color.fromARGB(255, 43, 42, 42) ),
            border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.person),
              ),
          ),
          const SizedBox(
            height: 25,
          ),
           TextField(
      controller: namecontroler,
          decoration:const InputDecoration(
      
            hintText: " Ingrese Email",
            labelText: "Email",
            labelStyle: TextStyle(fontSize: 23, color: Color.fromARGB(255, 43, 42, 42) ),
            border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.security),
              ),
          ),
          TextField(
            controller: namecontroler,
       decoration: InputDecoration(
      
            hintText: "Password",
            labelText: "Password",
            errorText: null,
            labelStyle: const TextStyle(fontSize: 23, color: Color.fromARGB(255, 43, 42, 42) ),
            border: const OutlineInputBorder(),
        
            suffixIcon: IconButton(
              
              icon: const Icon(Icons.remove_red_eye),
              onPressed:(){
              ocultar=!ocultar;  
        },
        ),
              ),
      obscureText: ocultar,
          ),
   Form(
    key: formkey,
    child: TextFormField(
      validator:(value) {
  if(
  namecontroler.text.length<8) {
  return" Ingrese minimo 8 carcarteres";
} else {
    return null;
  }

      },
    controller: namecontroler,
      decoration: InputDecoration(
      
            hintText: "Password",
            labelText: "Password",
            errorText: null,
            labelStyle: const TextStyle(fontSize: 23, color: Color.fromARGB(255, 43, 42, 42) ),
            border: const OutlineInputBorder(),
        
            suffixIcon: IconButton(
              
              icon: const Icon(Icons.remove_red_eye),
              onPressed:(){
              ocultar=!ocultar;  
        },
        ),
              ),
      obscureText: ocultar,
    )),
FloatingActionButton(onPressed: (){
print("Password:"+namecontroler.text);
print("Validacion"+ formkey.currentState!.validate.toString());

if(
  namecontroler.text.length<8) {
  contrasenaError= " Ingrese minimo 8 carcarteres";
} else {
  contrasenaError= null;
}

})
      ],
      ),
    
    );
  }
}

  
