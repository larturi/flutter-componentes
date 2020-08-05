// Dart
import 'package:flutter/material.dart';

// Providers
import 'package:componentes/src/providers/menu_provider.dart';

// Utils
import 'package:componentes/src/utils/icono_string_util.dart';

// Pages
import 'package:componentes/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      }
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    
    final List<Widget> opciones = [];

    data.forEach((opt) { 
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
        },
      );

      opciones..add(widgetTemp)
              ..add(Divider());

    });

    return opciones;


  }

}