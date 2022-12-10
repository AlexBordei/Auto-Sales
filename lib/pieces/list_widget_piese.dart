import 'package:auto_sales_flutter/pieces/cards_pieces.dart';
import 'package:auto_sales_flutter/models/anunt_piese.dart';
import 'package:flutter/material.dart';

class ListItemsPiese extends StatelessWidget {
  final List<AnuntModelPiese> anunturiPiese = [
    AnuntModelPiese(
      titlePiese: 'Toyota Piese',
      descriptionPiese: 'DEZMEMBREZ DACIA LOGAN 1.5 DCI EURO 4',
      imageUrlPiese: 'assets/Motor.jpg',
    ),
    AnuntModelPiese(
      titlePiese: 'Toyota Piese',
      descriptionPiese: 'DEZMEMBREZ DACIA LOGAN 1.5 DCI EURO 4',
      imageUrlPiese: 'assets/Motor.jpg',
    ),
    AnuntModelPiese(
      titlePiese: 'Toyota Piese',
      descriptionPiese: 'DEZMEMBREZ DACIA LOGAN 1.5 DCI EURO 4',
      imageUrlPiese: 'assets/Motor.jpg',
    ),
    AnuntModelPiese(
      titlePiese: 'Toyota Piese',
      descriptionPiese: 'DEZMEMBREZ DACIA LOGAN 1.5 DCI EURO 4',
      imageUrlPiese: 'assets/Motor.jpg',
    ),
  ];

  ListItemsPiese({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: anunturiPiese.length,
        itemBuilder: (context, index) {
          print(index);
          
          return CardAnuntPiese(
            titlePiese: anunturiPiese[index].titlePiese,
            descriptionPiese: anunturiPiese[index].descriptionPiese,
            imagePiese: anunturiPiese[index].imageUrlPiese != null
                ? Image.asset(anunturiPiese[index].imageUrlPiese!)
                : Image.asset('asset/logo.png'),
          );
        });
  }
}
