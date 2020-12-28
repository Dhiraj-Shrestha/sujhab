import 'package:flutter/material.dart';
import 'package:sujhab/InputDeco_design.dart';
import 'package:tabbar/tabbar.dart';

class AppointmentPage extends StatefulWidget {
  AppointmentPage({Key key}) : super(key: key);

  _AppointmentPageState createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
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
                  'Specialist',
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
                      'Dr. Loream Ipsum',
                      style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    )),
                    Tab(
                        child: CircleAvatar(
                      radius: 100.0,
                      backgroundImage: AssetImage("images/doctor.jpg"),
                    )),
                  ]),
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
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: buildInputDecoration(Icons.lock_clock,
                            "Sunday-Friday \n10:00 AM-4:00 PM"),
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
                        decoration: buildInputDecoration(
                            Icons.place, "PLO Marga \nBiratchowk,Morang"),
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
                        decoration: buildInputDecoration(
                            Icons.phone_in_talk_rounded,
                            "98000000-000 \n980000000"),
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
                        decoration: buildInputDecoration(Icons.email,
                            "user@loreamipsum.com \nloreamipsum@gmail.com"),
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
                        decoration: buildInputDecoration(Icons.star, "Rate"),
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
                          'Get Appointment',
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
