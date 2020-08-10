import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ninghaoa/demo/listview_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        //点击水波纹
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("3t",style: TextStyle(fontWeight: FontWeight.bold),),
                accountEmail: Text("ttt1214@163.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://img3.doubanio.com/icon/u81550830-133.jpg'),
                ),
                decoration: BoxDecoration(
                  //color: Colors.grey[200],
                  image: DecorationImage(
                    image: NetworkImage('https://resources.ninghao.org/images/candy-shop.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.white70.withOpacity(0.6),
                      BlendMode.darken
                    )
                  )
                ),
              ),
//              DrawerHeader(
//                child: Text('header'.toUpperCase()),
//                decoration: BoxDecoration(
//                  color: Colors.grey[200]
//                ),
//              ), //普通标题样式
              ListTile(
                title: Text('Message', textAlign: TextAlign.right,),
                trailing: Icon(Icons.message,color: Colors.black12,size: 22,),
                //leading: Icon(Icons.message,color: Colors.black12,size: 22,),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Favorite', textAlign: TextAlign.right,),
                trailing: Icon(Icons.favorite,color: Colors.black12,size: 22,),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Settings', textAlign: TextAlign.right,),
                trailing: Icon(Icons.settings,color: Colors.black12,size: 22,),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
        //endDrawer: Text("Right Drawer"),
        appBar: AppBar(
//          leading: IconButton(
//            icon: Icon(Icons.menu),
//            tooltip: 'Navigation',
//            onPressed: (){
//              debugPrint('Navigation clicked');
//            },
//          ), //去掉会使用系统默认
          title: Text("NINGHAO"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: (){
                debugPrint('Search clicked');
              },
            )
          ],
          elevation: 0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist),),
              Tab(icon: Icon(Icons.change_history),),
              Tab(icon: Icon(Icons.directions_bike),),
            ],
          ),
        ),
        //body: Hello(), //课程一
        body: TabBarView(
          children: <Widget>[
            //Icon(Icons.local_florist,size: 128,color: Colors.black26,),
            ListViewDemo(),
            Icon(Icons.change_history,size: 128,color: Colors.black26,),
            Icon(Icons.directions_bike,size: 128,color: Colors.black26,),
          ],
        ),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}

