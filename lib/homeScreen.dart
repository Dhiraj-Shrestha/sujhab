import 'package:flutter/material.dart';
import 'package:sujhab/ambulance.dart';
import 'package:sujhab/bloodbank.dart';
import 'package:sujhab/hospital.dart';
import 'package:sujhab/specialist.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              Icons.search,
              size: 30.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              Icons.menu,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/back.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 2.5,
                child: Center(
                  child: Image.asset(
                    "images/logo.png",
                    width: MediaQuery.of(context).size.width / 2 + 20,
                    fit: BoxFit.contain,
                  ),
                )),
            Stack(
              // ignore: deprecated_member_use
              overflow: Overflow.visible,
              children: [
                Container(
                  color: Color(0xFFf5f6f8),
                  height: MediaQuery.of(context).size.height / 1.67,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height / 7),
                      Text(
                        "Log In",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("Sign in with Gmail",
                          style: TextStyle(
                              color: Colors.blueAccent, fontSize: 20.0)),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Image.asset(
                            "images/lab.jpg",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: -40,
                    left: 20.0,
                    right: 20.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white70,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0,
                                horizontal: 20.0,
                              ),
                              child: Row(children: [
                                Expanded(
                                  child: data(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Hospital()),
                                        );
                                      },
                                      icon: Icons.local_hospital,
                                      name: "Hospital"),
                                ),
                                Expanded(
                                  child: data(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Ambulance()),
                                        );
                                      },
                                      icon: Icons.bus_alert,
                                      name: "Ambulance"),
                                ),
                              ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0,
                                horizontal: 20.0,
                              ),
                              child: Row(children: [
                                Expanded(
                                  child: data(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Specialist()),
                                        );
                                      },
                                      icon: Icons.museum_sharp,
                                      name: "Specialists"),
                                ),
                                Expanded(
                                  child: data(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BloodBank()),
                                        );
                                      },
                                      icon: Icons.watch_later,
                                      name: "Blood Bank"),
                                ),
                              ]),
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget data({IconData icon, String name, Function onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
        child: Row(
      children: [
        Icon(
          icon,
          color: Colors.blueAccent,
          size: 25.0,
        ),
        SizedBox(width: 8.0),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ],
    )),
  );
}
