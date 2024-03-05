import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrada de Dados'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: <Widget>[
              const Text(
                'Seja bem-vindo! Aplicativo para entrada de dados:',
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(labelText: 'Nome:'),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Idade:'),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: 'E-mail:'),
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(labelText: 'Celular:'),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.file_download_outlined),
                label: const Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
