import 'package:contador/provider/contador_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
final _contar = Provider.of<ContadorProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Contador con Provider'),),
      body: Center(
        child: Text('${_contar.contar}'),
     ),
     floatingActionButton: FloatingActionButton(onPressed: (){

        _contar.contando();

     },child: const Icon(Icons.add),),
   );
  }
}