import 'package:flutter/material.dart';

void main() => runApp(AppHeladeria());

class AppHeladeria extends StatelessWidget {
  const AppHeladeria({super.key});
  static const String _title = 'Drawer en Flutter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Heladeria(),
    );
  }
}

class Heladeria extends StatefulWidget {
  const Heladeria({super.key});
  @override
  _HeladeriaState createState() => _HeladeriaState();
}

class _HeladeriaState extends State<Heladeria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Heladeria Carmona's"),
        backgroundColor: const Color(0xffff7300),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: const Color(0xffff7300)),
              accountName: Text(
                "Misael Carmona Santana",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "carmoanmisael1@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              //currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: Icon(
                Icons.icecream,
              ),
              title: const Text('Helados'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.no_drinks,
              ),
              title: const Text('Malteadas'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.fire_truck,
              ),
              title: const Text('Sucursal'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            TabBar(
              indicatorColor: Color(0xfff66025),
              tabs: <Widget>[
                Tab(icon: Icon(Icons.people, color: Colors.black)),
                Tab(icon: Icon(Icons.icecream, color: Colors.black)),
                Tab(icon: Icon(Icons.no_drinks, color: Colors.black)),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 300,
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 5),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              'Carmona Santana Misael',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        ),
                        Container(
                          width: 250,
                          height: 0,
                          decoration: BoxDecoration(
                            color: Color(0xfffbfdff),
                            border: Border(
                              left: BorderSide(
                                  color: Color(0xffffffff), width: 0),
                              right: BorderSide(
                                  color: Color(0xffffffff), width: 0),
                              top: BorderSide(
                                color: Color(0xff000000),
                                width: 8,
                              ),
                              bottom: BorderSide(
                                  color: Color(0xffffffff), width: 0),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            "assets/images/y.jpg",
                          ),
                        ),
                        SizedBox(height: 20),
                        //Padding(
                        //padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        //),

                        Container(
                          width: 250,
                          height: 0,
                          decoration: BoxDecoration(
                            color: Color(0xfffbfdff),
                            border: Border(
                              left: BorderSide(
                                  color: Color(0xffffffff), width: 0),
                              right: BorderSide(
                                  color: Color(0xffffffff), width: 0),
                              top: BorderSide(
                                color: Color(0xffffffff),
                                width: 0,
                              ),
                              bottom: BorderSide(
                                  color: Color(0xff000000), width: 8),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        ),
                        Container(
                          width: 200,
                          height: 70,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 5),
                          ),
                          child: Center(
                            child: Text(
                              '6 - I | Programación',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                      child: Text(
                    'Helados',
                    style: TextStyle(fontSize: 20),
                  )),
                  Center(
                      child: Text(
                    'Malteadas',
                    style: TextStyle(fontSize: 20),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
