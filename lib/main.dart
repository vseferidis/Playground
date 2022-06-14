import 'package:flutter/material.dart';

void main() {
  runApp(const MyCard());
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey[100],
          appBar: AppBar(
            title: const Text('Victor S. Seferidis'),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: SafeArea(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/Profile.jpg'),
                  radius: 50.0,
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Text('Victor S. Seferidis',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.blueGrey[800],
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Montserrat',
                    )),
                Text('Designer, Developer & Husband',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.blueGrey[600],
                      fontWeight: FontWeight.w400,
                      fontFamily: 'OpenSans',
                    )),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const <Widget>[
                      Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 8.0),
                        child: ListTile(
                          title: Text(
                            '+49 123 456 789',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          leading: Icon(Icons.phone),
                          horizontalTitleGap: 0.0,
                          subtitle: Text('Let\'s talk about it'),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 8.0),
                        child: ListTile(
                          title: Text('hello@seferidis.de',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          leading: Icon(Icons.mail_outline),
                          horizontalTitleGap: 0.0,
                          subtitle: Text('Write me your next idea '),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 8.0),
                        child: ListTile(
                          title: Text(
                            'github.com/vseferidis',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          leading: Icon(Icons.code),
                          horizontalTitleGap: 0.0,
                          subtitle: Text('Take a look at my works '),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ))),
    );
  }
}
