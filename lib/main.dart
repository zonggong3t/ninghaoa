import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ninghaoa/model/post.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }
}

class Home extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16,),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.headline5,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          SizedBox(height: 16,)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("NINGHAO"),
        elevation: 0,
      ),
      //body: Hello(), //课程一
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder
      ),
    );
  }
}



class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Helloa",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 30,
            color: Colors.green
        ),
      ),
    );
  }
}

