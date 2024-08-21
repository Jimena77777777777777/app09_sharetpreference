import 'package:flutter/material.dart';
import 'package:app09_sharetpreference/widgets/my_drawer_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkMode = false;
  int gender = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shared Preferences App"),
        ),
        drawer: MyDrawerWidget(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Configuración General",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Nombre completo",
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Dirección actual",
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              SwitchListTile(
                value: isDarkMode,
                onChanged: (bool value) {
                  setState(() {
                    isDarkMode = value;
                  });
                },
                title: const Text("Dark mode"),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text(
                "Gender",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              RadioListTile(
                value: 1,
                groupValue: gender,
                onChanged: (int? value) {
                  setState(() {
                    gender = value!;
                  });
                },
                title: const Text("Male"),
              ),
              RadioListTile(
                value: 2,
                groupValue: gender,
                onChanged: (int? value) {
                  setState(() {
                    gender = value!;
                  });
                },
                title: const Text("Female"),
              ),
              const SizedBox(
                height: 12.0,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.save,
                  color: Colors.white,
                ),
                label: const Text(
                  "Save Data",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
