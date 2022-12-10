import 'package:flutter/material.dart';
import 'package:auto_sales_flutter/pieces/anunt_piese_detaliat.dart';

class CardAnuntPiese extends StatelessWidget {
  String? titlePiese;
  String? descriptionPiese;
  Image ? imagePiese;

  CardAnuntPiese({
    super.key,
    this.titlePiese,
    this.descriptionPiese,
    this.imagePiese,
  });

  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            leading: imagePiese!,
            title: Text(titlePiese ?? ''),
            subtitle: Text(descriptionPiese ?? ''),
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnunDetaliatPiese(
                            titlePiese: titlePiese,
                            descriptionPiese: descriptionPiese,
                            imagePiese: imagePiese!,
                          )));
            }),
          ),
        )
      ],
    );
  }
}
