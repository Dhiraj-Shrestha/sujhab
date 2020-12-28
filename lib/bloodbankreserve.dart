import 'package:flutter/material.dart';
import 'package:tabbar/tabbar.dart';

class BloodBankReserve extends StatefulWidget {
  BloodBankReserve({Key key}) : super(key: key);

  _BloodBankReserveState createState() => _BloodBankReserveState();
}

class _BloodBankReserveState extends State<BloodBankReserve> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            expandedHeight: 150,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text(
                  'Blood Bank',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(130),
              child: TabbarHeader(
                backgroundColor: Colors.white,
                indicatorColor: Colors.blue,
                controller: controller,
                tabs: [
                  Tab(
                      child: Text(
                    'A Positive Available',
                    style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
                  )),
                  Tab(
                      child: Text(
                    '',
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
                          'Reserve',
                          style: TextStyle(fontSize: 25.0, color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(14.0),
  );
}

class TextBox extends StatelessWidget {
  const TextBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var container = Container(
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
              Icons.location_on,
              color: Colors.black,
              size: 30,
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              'Loream Hospital \nLoreampur',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: container,
    );
  }
}
