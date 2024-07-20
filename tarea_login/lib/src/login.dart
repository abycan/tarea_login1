import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool ocultar= true;
  
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
      children: [
        const TextField(
      
          decoration:InputDecoration(
      
            hintText: "Email",
            labelText: "Email",
            labelStyle: TextStyle(fontSize: 23, color: Color.fromARGB(255, 43, 42, 42) ),
            border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.person),
              ),
          ),
          const SizedBox(
            height: 25,
          ),
          TextField(
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
      ],
      ),
    
    );
  }
}

