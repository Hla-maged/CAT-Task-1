import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        //Color(0xffD1CFCF),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Task 1',
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        drawer: Drawer(
            child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blue,
                  child: Text(
                    'H',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                accountName: Text('Hla Maged'),
                accountEmail: Text('hlamged2020@gmail.com')),
            ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text('Help'),
              leading: Icon(Icons.help),
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.help_center),
            )
          ],
        )),
        body: Padding(
            padding: EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 53,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 48,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [Colors.black, Colors.white],
                            ),
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 53,
                      backgroundColor: Colors.blue,
                      child: CircleAvatar(
                          radius: 48,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [Colors.blue, Colors.black],
                              ),
                            ),
                          )),
                    ),
                    CircleAvatar(
                      radius: 53,
                      backgroundColor: Colors.blue,
                      child: CircleAvatar(
                        radius: 48,
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  colors: [Colors.blue, Colors.red])),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 40, right: 40, left: 40),
                  height: 50,
                  width: 390,
                  child: Center(
                    child: Text(
                      'POSTS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 26),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(colors: [
                      Colors.blue,
                      Colors.black,
                      Colors.blue,
                    ]),
                  ),
                ),
                Container(
                  height: 450,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/cat task1.jpg')),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
