
import 'package:auto_sales_flutter/pieces/list_widget_piese.dart';
import 'package:flutter/material.dart';

class AnunturiPiese extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anunturi Piese'),
      ),
      drawer: Drawer(
        child:ListView( 
          padding: EdgeInsets.all(0.0),
          children: [
            DrawerHeader( 

            decoration: BoxDecoration( 
              color: Colors.blue,
              
            ),
            child: Text('Produse'),
            ),
            ListTile( 
              title: Text('Marca'),
              onTap: (){
Navigator.pop(context);

              },

            ),
            
            ListTile( 
              title: Text('Culoare'),
              onTap: (){
Navigator.pop(context);

              },

            ),
            ListTile( 
              title: Text('Combustibil'),
              onTap: (){
Navigator.pop(context);

              },

            ),
          ],



        ) ,
        ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {},
              child: ListItemsPiese()),
        ),
      ),
    );
  }
}
