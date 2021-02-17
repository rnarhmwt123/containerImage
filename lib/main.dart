import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tracking covid"),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.red[900],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "Kasus Global "
                          "Positif : 1000 "
                          "Sembuh : 900 "
                          "Meninggal : 100 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.red[900],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "Kasus Global "
                          "Positif : 1000 "
                          "Sembuh : 900 "
                          "Meninggal : 100 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                height: 50,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.call, size: 45, color: Colors.white),
                    Icon(Icons.navigation, size: 45, color: Colors.white),
                    Icon(Icons.share, size: 45, color: Colors.white),
                    Icon(Icons.home, size: 45, color: Colors.white),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                height: 600,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      margin: EdgeInsets.all(5),
                      color: Colors.red,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          ListItem(
                            warna: Colors.green[900],
                            lebar: 100,
                          ),
                          ListItem(
                            warna: Colors.lime[900],
                            lebar: 100,
                          ),
                          ListItem(
                            warna: Colors.indigo[900],
                            lebar: 100,
                          ),
                          ListItem(
                            warna: Colors.brown[900],
                            lebar: 100,
                          ),
                          ListItem(
                            warna: Colors.teal[900],
                            lebar: 100,
                          ),
                          ListItem(
                            warna: Colors.pink[900],
                            lebar: 100,
                          ),
                          ListItem(
                            warna: Colors.orange[600],
                            lebar: 100,
                          ),
                          ListItem(
                            warna: Colors.black,
                            lebar: 100,
                          ),
                          ListItem(
                            warna: Colors.white,
                            lebar: 100,
                          ),
                          ListItem(
                            warna: Colors.pink[200],
                            lebar: 100,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 80,
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/covid.jpeg')),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 80,
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/covid.jpeg')),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 80,
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/covid.jpeg')),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key key,
    @required this.warna,
    @required this.lebar,
  }) : super(key: key);

  final Color warna;
  final double lebar;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: lebar,
      color: warna,
      margin: EdgeInsets.all(10),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController _controller;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
