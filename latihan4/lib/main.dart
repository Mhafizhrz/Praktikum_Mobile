import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.music_note)),
                Tab(icon: Icon(Icons.music_video)),
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(icon: Icon(Icons.grade)),
                Tab(icon: Icon(Icons.email)),
              ],
            ),
            title: const Text('FTI Tutorial'),
            backgroundColor: Colors.blue,
          ),
          body: const TabBarView(
            children: [
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Music',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Icon(Icons.music_note,
                      size: 300, color: Color.fromARGB(255, 162, 255, 55))
                ],
              )),
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Music Video',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Icon(Icons.music_video,
                      size: 300, color: Color.fromARGB(255, 25, 73, 156))
                ],
              )),
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Camera',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Icon(Icons.camera_alt,
                      size: 300, color: Color.fromARGB(255, 240, 50, 50))
                ],
              )),
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Favorit',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Icon(Icons.grade,
                      size: 300, color: Color.fromARGB(255, 223, 223, 5))
                ],
              )),
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Email',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Icon(Icons.email,
                      size: 300, color: Color.fromARGB(255, 255, 3, 3))
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
