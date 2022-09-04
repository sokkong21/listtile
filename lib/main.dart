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
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),

      //drawer = slide bar
      drawer: Container(
        color: Colors.blueAccent,
        width: 250.0,
        child: Column(
          children: [
            Container(
              color: Colors.redAccent,
              height: 200.0,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 40, //size cicle oy big
                    backgroundImage: NetworkImage(
                        'https://i.pinimg.com/736x/f9/96/8d/f9968df268c7dab39bef20cff0a058cf.jpg'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Profile Name'),
                ],
              ),
            ),

            //listtile start here
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            //listtile
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            //black bar
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            Spacer(),
            Text('Version 1.0.0'),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),

//darwer
    );
  }
}
