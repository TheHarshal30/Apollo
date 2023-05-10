// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Navigator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => NavPage(
        pageIndex: 1,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeIn;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  int value = 0;
  int circ = 70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image(
                          image: AssetImage("assets/pfp.png"),
                          height: MediaQuery.of(context).size.height / 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Welcome to Apollo",
                                  style: GoogleFonts.manrope(
                                      color: Colors.white, fontSize: 15)),
                              Text("Harshal Rudra",
                                  style: GoogleFonts.manrope(
                                      color: Colors.grey, fontSize: 12)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Icon(Icons.notifications_outlined,
                          color: Colors.grey, size: 25),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Dashboard",
                        style: GoogleFonts.manrope(
                            color: Colors.white, fontSize: 20)),
                    Text(
                      " Analytics",
                      style:
                          GoogleFonts.manrope(color: Colors.grey, fontSize: 18),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              _createRoute(),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, top: 20, bottom: 20),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 3.2,
                              width: MediaQuery.of(context).size.width / 1.25,
                              decoration: BoxDecoration(
                                color: (index % 2 == 0)
                                    ? Color.fromRGBO(229, 252, 127, 1)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20.0, left: 20, right: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Design",
                                          style: GoogleFonts.manrope(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              color: (index % 2 == 0)
                                                  ? Colors.black
                                                  : Colors.black),
                                        ),
                                        Icon(
                                          Icons.more_horiz,
                                          size: 23,
                                          color: (index % 2 == 0)
                                              ? Colors.black
                                              : Colors.black,
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 20, right: 10),
                                    child: Text(
                                        "App Onboarding and Splash Screen",
                                        style: GoogleFonts.manrope(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: (index % 2 == 0)
                                                ? Colors.black
                                                : Colors.black)),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20.0, left: 20, right: 0),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.8,
                                          child: LinearProgressIndicator(
                                            value: 0.5,
                                            backgroundColor: (index % 2 == 0)
                                                ? Colors.white
                                                : Colors.blueGrey.shade50,
                                            color: (index % 2 == 0)
                                                ? Colors.black
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20.0, left: 20, right: 20),
                                        child: Text(
                                          "50%",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              color: (index % 2 == 0)
                                                  ? Colors.black
                                                  : Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Stack(
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              backgroundColor: (index % 2 != 0)
                                                  ? Colors.black
                                                  : Colors.white,
                                              child: CircleAvatar(
                                                radius: 19,
                                                backgroundColor:
                                                    (index % 2 != 0)
                                                        ? Colors.white
                                                        : Colors.black,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 18.0),
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor:
                                                    (index % 2 != 0)
                                                        ? Colors.black
                                                        : Colors.white,
                                                child: CircleAvatar(
                                                  radius: 19,
                                                  backgroundColor:
                                                      (index % 2 != 0)
                                                          ? Colors.white
                                                          : Colors.black,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 36.0),
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor:
                                                    (index % 2 != 0)
                                                        ? Colors.black
                                                        : Colors.white,
                                                child: CircleAvatar(
                                                  radius: 19,
                                                  backgroundColor:
                                                      (index % 2 != 0)
                                                          ? Colors.white
                                                          : Colors.black,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 54.0),
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor:
                                                    (index % 2 != 0)
                                                        ? Colors.black
                                                        : Colors.white,
                                                child: CircleAvatar(
                                                  radius: 19,
                                                  backgroundColor:
                                                      (index % 2 != 0)
                                                          ? Colors.white
                                                          : Colors.black,
                                                  child: Text(
                                                    "+4",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: (index % 2 != 0)
                                                            ? Colors.black
                                                            : Colors.white),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 20.0),
                                          child: Row(
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.comment_rounded,
                                                    size: 18,
                                                    color: (index % 2 == 0)
                                                        ? Colors.black
                                                        : Colors.black,
                                                  ),
                                                  Text(
                                                    " 17",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: (index % 2 == 0)
                                                            ? Colors.black
                                                            : Colors.black),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .attach_file_outlined,
                                                      size: 18,
                                                      color: (index % 2 == 0)
                                                          ? Colors.black
                                                          : Colors.black,
                                                    ),
                                                    Text(
                                                      " 4",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: (index % 2 ==
                                                                  0)
                                                              ? Colors.black
                                                              : Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Your",
                        style: GoogleFonts.manrope(
                            color: Colors.white, fontSize: 20)),
                    Text(
                      " Progress",
                      style:
                          GoogleFonts.manrope(color: Colors.grey, fontSize: 18),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.8,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 3.8,
                        width: MediaQuery.of(context).size.width / 2.2,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, top: 15, bottom: 5),
                              child: Text(
                                "Priority Tasks",
                                style: GoogleFonts.manrope(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 5,
                                    child: ListView.builder(
                                        itemCount: 5,
                                        itemBuilder: ((context, index) =>
                                            (index % 2 != 0)
                                                ? Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 15.0,
                                                            top: 10),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .check_circle_outline,
                                                          color: Colors
                                                              .grey.shade500,
                                                          size: 15,
                                                        ),
                                                        Text(
                                                          " Design new Logo",
                                                          style: GoogleFonts
                                                              .manrope(
                                                                  fontSize: 13,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade500),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                : Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 15.0,
                                                            top: 10),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons.circle_outlined,
                                                          color: Colors
                                                              .grey.shade100,
                                                          size: 15,
                                                        ),
                                                        Text(
                                                          " Design new Logo",
                                                          style: GoogleFonts
                                                              .manrope(
                                                                  fontSize: 13,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade400),
                                                        )
                                                      ],
                                                    ),
                                                  ))),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 0),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height / 8,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade900,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, top: 5),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Text(
                                                circ.toString() + "%",
                                                style: GoogleFonts.manrope(
                                                    color: Colors.white,
                                                    fontSize: 11),
                                              ),
                                              Transform.scale(
                                                scale: 1.2,
                                                child:
                                                    CircularProgressIndicator(
                                                  strokeWidth: 5,
                                                  value: 0.6,
                                                  backgroundColor:
                                                      Colors.grey.shade800,
                                                  color: Color.fromRGBO(
                                                      229, 252, 127, 1),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Completed",
                                                style: GoogleFonts.manrope(
                                                    fontSize: 12,
                                                    color: Colors.grey),
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "9/11",
                                                    style: GoogleFonts.manrope(
                                                        fontSize: 22,
                                                        color: Colors.white),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5.0),
                                                    child: Text(" Tasks",
                                                        style:
                                                            GoogleFonts.manrope(
                                                                fontSize: 12,
                                                                color: Colors
                                                                    .grey)),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ]),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Container(
                                height: MediaQuery.of(context).size.height / 8,
                                width: MediaQuery.of(context).size.width / 2.2,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade900,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
