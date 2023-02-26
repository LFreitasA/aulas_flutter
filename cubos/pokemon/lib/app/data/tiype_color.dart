import 'package:flutter/material.dart';

Color bgColor(String type) {
  Color cor;
  switch (type.toLowerCase()) {
    case 'grass':
      cor = Colors.green;
      break;
    case 'fire':
      cor = Colors.orange;
      break;
    case 'water':
      cor = Colors.blue;
      break;
    case 'bug':
      cor = Colors.greenAccent;
      break;

    case 'steel':
      cor = Colors.grey;
      break;

    case 'ice':
      cor = Colors.cyan;
      break;
    case 'electric':
      cor = Colors.yellow;
      break;
    case 'rock':
      cor = Colors.brown;
      break;
    case 'poison':
      cor = Colors.purple;
      break;
    case 'normal':
      cor = Color.fromARGB(255, 34, 65, 0);
      break;
    case 'ground':
      cor = Color.fromARGB(255, 105, 105, 9);
      break;
    case 'fairy':
      cor = Colors.pinkAccent;
      break;
    case 'psychic':
      cor = Colors.pink;
      break;
    case 'fighting':
      cor = Color.fromARGB(169, 197, 128, 102);
      break;
    case 'ghost':
      cor = Colors.purpleAccent;
      break;
    case 'dragon':
      cor = Colors.indigo;
      break;
    case 'dark':
      cor = Color.fromARGB(78, 107, 107, 107);
      break;
    case 'steel':
      cor = Color.fromARGB(134, 207, 207, 207);
      break;
    default:
      cor = Colors.white;
  }
  return cor;
}
/*
Fire: Orange
Water: Azure - precisa ajustar
Ice: Cyan
Electric: Yellow
Rock: 
Poison: Purple
Grass: Green
Bug: Olive
Normal: Warm gray
Fairy: Pale magenta
Ghost: Dark violet
Dragon: Indigo
Dark: Warm black

*/
/*
Steel: Cool gray
Flying: Cornflower
???: Dark teal
Ground: Sand
Fighting: Maroon
Psychic: Hot pink

*/