import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MinhaPrimeiraPagina(titulo: 'Primeiro Programa'),
    );
  }
}

class MinhaPrimeiraPagina extends StatefulWidget {
  const MinhaPrimeiraPagina({
    super.key,
    required this.titulo,
  });

  final String titulo;

  @override
  State<MinhaPrimeiraPagina> createState() => _MinhaPrimeiraPaginaState();
}

class _MinhaPrimeiraPaginaState extends State<MinhaPrimeiraPagina> {
  int _contador = 0;

  void _incrementarContador() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.titulo),
        centerTitle: true,
        actions: [
          IconButton(
             icon: const Icon(Icons.search),
             onPressed:  _incrementarContador,
          ),
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed:() {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Você pressionou o botão este número de vezes:',
            ),
            Text(
              '$_contador',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementarContador,
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),
      ),
    );
  }
}