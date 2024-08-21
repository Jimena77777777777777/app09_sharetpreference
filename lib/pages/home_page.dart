import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkMode = false;

  String gender = 'Male'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
        ),
      ),

      /// pestaña
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.pexels.com/photos/13650913/pexels-photo-13650913.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/573299/pexels-photo-573299.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                    Text(
                      "Yujin Flores",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Administrador",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                   ],

                ),

                              
              ),

              
            ),

            ListTile(
              leading: Icon(
                Icons.person
              ),
              title:Text(
                "My profile"
              ),
            ),

            ListTile(
              leading: Icon(
                Icons.file_copy
              ),
              title:Text(
                "Portafolio"
              ),
            ),

            ListTile(
              leading: Icon(
                Icons.lock
              ),
              title:Text(
                "Change Password"
              ),
            ),

            Divider(indent: 12, endIndent: 12,),

            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color:Colors.orange
              ),
              title:Text(
                "Logout",
                
                
              ),
              
            )
          ],
        ),

        
      ),

/////
        body: Padding(
  padding: const EdgeInsets.all(16.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Configuración general",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 16.0),
      Text(
        "Elvis",
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
        ),
      ),

      Divider(indent: 0, endIndent: 0,),

      SizedBox(height: 16.0),

      Text(
        "Lopez",
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
        ),
      ),
      Divider(indent: 0, endIndent: 0,),

      SizedBox(height: 16.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Dark Mode",
            style: TextStyle(color: Colors.black,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,),
            
          ),
          Switch(
            value: false, 
            onChanged: (value) {
              
            },
          ),
        ],
      ),
      SizedBox(height: 16.0),
      Text(
        "Gender",
        style: TextStyle(color: Colors.black),
      ),
      Row(
              children: [
                Radio<String>(
                  value: 'Male',
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                Text("Male"),
                Radio<String>(
                  value: 'Female',
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                Text("Female"),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para guardar los datos
               
              },
              child: Text("Save data",
              ),
              
            ),

    ],
  ),
),




    );
  }
}