import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagen
          const Image(image: AssetImage('assets/fondo.jpg')),
          //Titulo/Texto del widget
          const Title(),

          //Button Section
          const ButtonSection(),

          //Description
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: const Text(
                "Nisi sit consectetur velit sit culpa fugiat Lorem ipsum Lorem reprehenderit irure. Exercitation cillum eu elit adipisicing eu minim reprehenderit amet qui minim anim voluptate esse. Enim nulla non magna cillum."),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //Margenes para que haya un padding horizontal
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            //Para alinear los elementos de manera horizontal
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Este es el titulo.....",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Este es el subtitulo",
                  style: TextStyle(color: Colors.black45))
            ],
          ),

          //Se expande todo lo que pueda entre los elementos
          Expanded(child: Container()),

          const Icon(Icons.star, color: Colors.red),
          const Text("41")
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Row(
          //Manejar el espacio entre los elementos
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CustomButton(icon: Icons.call, text: "Call"),
            CustomButton(icon: Icons.map_sharp, text: "Route"),
            CustomButton(icon: Icons.share, text: "Share"),
          ]),
    );
  }
}

/// Class para crear los iconos con el texto
class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
