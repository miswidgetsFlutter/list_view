import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final nombres = [
    'pepe',
    'julio',
    'lupe',
    'manolo',
    'luis',
    'alberto',
    'a',
    'b',
    'uli',
    'jose'
  ];
  final apellido = [
    'cobian',
    'aguliar',
    'perez'
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list view'),
      ),
      body:ListView(
          //children: _crearItems(),
          children: _listacorta(),
          addAutomaticKeepAlives: true,
          cacheExtent: 100.0,
        ),

    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = List<Widget>();

    for (String nom in nombres) {
      final tempWidget = ListTile(
        title: Text(nom),
        subtitle: Text('apellido'),
        leading: Icon(Icons.ac_unit),
        trailing: Icon(Icons.arrow_right),
        onTap: () {},
      );

      lista.add(tempWidget);

      lista.add(
        Divider(
          height: 22.5,
          color: Colors.red,
        ),
      );
    }

    return lista;
  }

  List <Widget> _listacorta(){

    var lista_widgets = nombres.map((ape){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text(ape + '!'),
            subtitle: Text('holaa'),
            contentPadding: EdgeInsets.all(2.0),
            selected: true,
          ),
          Divider(color: Colors.redAccent),
        ],
      );

    }).toList();

    return lista_widgets;
  }

}
