import 'package:flutter/material.dart';
import 'package:app09_sharetpreference/widgets/my_drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isDarkMode = false; // Variable para manejar el estado del modo oscuro

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shared Preferences App"),
        ),
        drawer: const MyDrawerWidget(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Configuración General",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12.0),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Nombre completo",
                ),
              ),
              const SizedBox(height: 12.0),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Dirección actual",
                ),
              ),
              const SizedBox(height: 12.0),
              SwitchListTile(
                value: _isDarkMode,
                onChanged: (bool value) {
                  setState(() {
                    _isDarkMode = value;
                  });
                },
                title: const Text("Dark mode"),
              ),
              const SizedBox(height: 12.0),
              const Text(
                "Gender",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              RadioListTile(
                value: 1,
                groupValue: 1,
                onChanged: (int? value) {},
                title: const Text("Male"),
              ),
              RadioListTile(
                value: 1,
                groupValue: 1,
                onChanged: (int? value) {},
                title: const Text("Female"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
