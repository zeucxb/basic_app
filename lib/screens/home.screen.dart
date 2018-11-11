import 'package:flutter/material.dart';
import 'package:scanbu/screens/second.screen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            bottom: const TabBar(
              isScrollable: true,
              tabs: <Widget>[
                Tab(text: 'Products'),
                Tab(text: 'Play'),
                Tab(text: 'Matchs'),
              ],
            ),
          ),
          body: new SafeArea(
            bottom: false,
            child: TabBarView(
              children: <Widget>[
                PageState(title: 'Products'),
                SecondScreen(),
                PageState(title: 'Matchs'),
              ],
            ),
          )),
    );
  }
}

class PageState extends StatefulWidget {
  PageState({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Page createState() => Page();
}

class Page extends State<PageState> {
  int _counter = 0;
  String _field;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Email:'),
            keyboardType: TextInputType.emailAddress,
            onChanged: (field) => setState(() => _field = field),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password:'),
            onChanged: (field) => setState(() => _field = field),
          ),
          Text(widget.title),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.display1,
          ),
          Text(
            '$_field',
            style: Theme.of(context).textTheme.display1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 2, right: 2),
                child: MaterialButton(
                  onPressed: _decrementCounter,
                  color: Colors.pink,
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 2, right: 2),
                child: MaterialButton(
                  onPressed: _incrementCounter,
                  color: Colors.pink,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}