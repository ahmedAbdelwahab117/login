import 'package:flutter/material.dart';

class App01 extends StatelessWidget {
  App01({super.key, required this.eMail, required this.password});

  String eMail;
  String password;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            iconSize: 27,
          ),
          backgroundColor: Colors.white,
          title: const Center(
              child: Text('Home', style: TextStyle(color: Colors.black))),
          actions: [
            IconButton(
                onPressed: () {
                  print('Setting Opened');
                },
                icon: const Icon(Icons.settings),
                color: Colors.black),
          ],
        ),
        body: Column(
          children: [
            Center(
              heightFactor: 1.1,
              child: Container(
                child: const CircleAvatar(
                  radius: 92,
                  backgroundColor: Colors.black54,
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage('Images/Ahmed000.jpg'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 90,
                alignment: Alignment.bottomLeft,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ID',
                      style: TextStyle(color: Colors.black, fontSize: 23),
                    ),
                    Text(
                      '2',
                      style: TextStyle(color: Colors.black45, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 90,
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Email',
                      style: TextStyle(color: Colors.black, fontSize: 23),
                    ),
                    Text(
                      '$eMail',
                      style:
                          const TextStyle(color: Colors.black45, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'password',
                        style: TextStyle(color: Colors.black, fontSize: 23),
                      ),
                      Text(
                        '$password',
                        style: const TextStyle(
                            color: Colors.black45, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
