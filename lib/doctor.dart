import 'package:flutter/material.dart';
import 'package:tabbar/tabbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sujhab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 30,
                    ),
                    SizedBox(
                      width: 25.0,
                    ),
                    Icon(Icons.menu, size: 30),
                  ],
                ),
              ],
            ),
            expandedHeight: 150,
            floating: false,
            // pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text(
                  'Hospital',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(120),
              child: TabbarHeader(
                backgroundColor: Colors.white,
                indicatorColor: Colors.blue,
                controller: controller,
                tabs: [
                  Tab(
                      child: Text(
                        'Patan Hospital',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      )),
                  Tab(
                      child: Text(
                        '',
                      )),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabbarContent(
              controller: controller,
              children: <Widget>[
                ListView(
                  children: [
                    TextBox(),
                    TextBox(),
                    TextBox(),
                    TextBox(),
                    TextBox(),
                    TextBox(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue,
                        ),

                        child: Center(
                            child: Text(
                              'Reserve',
                              style: TextStyle(fontSize: 25.0, color: Colors.white),
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class TextBox extends StatelessWidget {
  const TextBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child:  Container(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('https://mk0nationalecze417sw.kinstacdn.com/wp-content/uploads/2020/07/shutterstock_624008096.jpg'),
                radius: 30,
              ),
              SizedBox(width: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Suresh Pyakuryal',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    'MBBS MD | Opthamology',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),

                  Text(
                    'Sun-Fri | 10 AM to 4 PM',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

