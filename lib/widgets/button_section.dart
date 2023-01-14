import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(context,color, Icons.call, 'CALL','Llamando a Roman'),
    _buildButtonColumn(context ,color, Icons.near_me, 'ROUTE', 'Dirigiendome a Oeschinen'),
    _buildButtonColumn(context,color, Icons.share, 'SHARE','Compartiendo con Roman'),
    ],
  );
}



  Column _buildButtonColumn(BuildContext context,Color color, IconData icon, String label, String messenger) {
    
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: (){
          showSnackBar(context, messenger);
        }, icon: Icon(icon), color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}


void showSnackBar(BuildContext context, String messenger){
  final snackBar = SnackBar(
    content: Text(messenger),
    //backgroundColor: Colors.black87,
    duration: Duration(seconds: 2, milliseconds: 500),
    action: SnackBarAction(
      label:  'CANCELAR',
      //textColor: Colors.white,
      onPressed: () {}),);
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

