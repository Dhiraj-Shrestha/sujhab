import 'package:flutter/material.dart';
import 'package:sujhab/InputDeco_design.dart';
import 'package:sujhab/bloodbankreserve.dart';
import 'package:tabbar/tabbar.dart';

class BloodBank extends StatefulWidget {
  BloodBank({Key key}) : super(key: key);

  _BloodBankState createState() => _BloodBankState();
}

class _BloodBankState extends State<BloodBank> {
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
                    'Near Me',
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
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 10, right: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BloodBankReserve()),
                          );
                        },
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration:
                              buildInputDecoration(Icons.opacity, "A Positive"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 10, right: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration:
                            buildInputDecoration(Icons.opacity, "O Positive"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 10, right: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration:
                            buildInputDecoration(Icons.opacity, "AB Negative"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 10, right: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration:
                            buildInputDecoration(Icons.opacity, "A Negative"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 10, right: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration:
                            buildInputDecoration(Icons.opacity, "B Negative"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 10, right: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration:
                            buildInputDecoration(Icons.opacity, "B Negative"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
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
