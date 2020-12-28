import 'package:flutter/material.dart';
import 'package:sujhab/doctor.dart';
import 'package:tabbar/tabbar.dart';

class Hospital extends StatefulWidget {
  Hospital({Key key}) : super(key: key);

  _HospitalState createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
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
                    'Near me',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
                  )),
                  Tab(
                      child: Text(
                    'Top rated',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
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
                          'Search',
                          style: TextStyle(fontSize: 25.0, color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
                // Container(
                //   // color: Colors.red,
                //   child: ListView.builder(
                //     itemCount: 4,
                //   itemBuilder: (BuildContext context,int index){
                //     return  TextBox();
                //   }),

                // ),
                ListView(
                  children: [
                    Star(),
                    Star(),
                    Star(),
                    Star(),
                    Star(),
                    Star(),
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
                          'Search',
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

class Star extends StatelessWidget {
  const Star({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.map,
                color: Colors.black,
                size: 30,
              ),
              Text(
                'lorem Ispum',
                style: TextStyle(fontSize: 16),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
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
      padding: const EdgeInsets.all(14.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Doctor()),
          );
        },
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'lorem Ispum',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
