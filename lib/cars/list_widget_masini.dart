import 'package:auto_sales_flutter/models/anunt_cars.dart';
import 'package:flutter/material.dart';
import 'package:auto_sales_flutter/cars/cards_cars.dart';

class ListItems extends StatelessWidget {
  final List<AnuntModel> anunturi = [
    AnuntModel(
      title: 'Toyota',
      description:
          'Detalii Suplimentare la telefon. Daca nu raspund revin cu telefon in cel mai scurt timp posibil.',
      imageUrl: 'assets/car1.png',
    ),
    AnuntModel(
      title: 'Toyota1',
      description:
          'Detalii Suplimentare la telefon. Daca nu raspund revin cu telefon in cel mai scurt timp posibil.',
      imageUrl: 'assets/car1.png',
    ),
    AnuntModel(
      title: 'Toyota2',
      description:
          'Detalii Suplimentare la telefon. Daca nu raspund revin cu telefon in cel mai scurt timp posibil.',
      imageUrl: 'assets/car1.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: anunturi.length,
        itemBuilder: (context, index) {
          print(index);

          return CardAnunt(
            titleCars: anunturi[index].title ?? '',
            descriptionCars: anunturi[index].description,
            imageCars: anunturi[index].imageUrl != null
                ? Image.asset(anunturi[index].imageUrl!)
                : Image.asset('assets/logo.png'),
          );
        });
  }
}
