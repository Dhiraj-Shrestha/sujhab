import 'package:flutter/material.dart';
import 'package:sujhab/appointment.dart';
import 'package:tabbar/tabbar.dart';

class Specialist extends StatefulWidget {
  Specialist({Key key}) : super(key: key);

  _SpecialistState createState() => _SpecialistState();
}

class _SpecialistState extends State<Specialist> {
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
                padding: const EdgeInsets.only(bottom: 45),
                child: Text(
                  'Specialist',
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
                        color: Colors.blue[800],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
                  )),
                  Tab(
                      child: Text(
                    'Top rated',
                    style: TextStyle(
                        color: Colors.blue[800],
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
                ListView(
                  children: [
                    Star(),
                    Star(),
                    Star(),
                    Star(),
                    Star(),
                    Star(),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
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
          padding: const EdgeInsets.all(1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.location_on,
                color: Colors.black,
                size: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Lorem Ispum \n'
                    'MBBS|MD Opthamology\nLoreum Ipsum Hospital',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 25,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 25,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 25,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 25,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 25,
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
      padding: const EdgeInsets.all(11.0),
      child: InkWell(
         onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AppointmentPage()),
          );
        },
              child: Container(
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Lorem Ispum',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'MBBS MD | Opthamology',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Loreum Ipsum Hospital',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
