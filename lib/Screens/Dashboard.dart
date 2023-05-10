// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  Dashboard({super.key});
  String text =
      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate  nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate";

  bool isExpanded = false;
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  _ExpandableTextState createState() => new _ExpandableTextState();
  int selec = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(229, 252, 127, 1),
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios_new_rounded),
                      Icon(Icons.mode_edit_outline_rounded)
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                  child: Text(
                    "App Onboarding and Splash Screen",
                    style: GoogleFonts.manrope(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(25, 25, 25, 1),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 20, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Image(
                              image: AssetImage("assets/pfp.png"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Started by",
                                    style: GoogleFonts.manrope(
                                        fontSize: 12,
                                        color: Colors.grey.shade700)),
                                Text("Harshal Rudra",
                                    style: GoogleFonts.manrope(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.calendar_month_outlined,
                              color: Colors.black),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Due Date",
                                    style: GoogleFonts.manrope(
                                        fontSize: 12,
                                        color: Colors.grey.shade700)),
                                Text("30 July",
                                    style: GoogleFonts.manrope(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(10, 10, 10, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selec = 0;
                            });
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              height: MediaQuery.of(context).size.height / 15,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: (selec == 0)
                                              ? Color.fromRGBO(229, 252, 127, 1)
                                              : Colors.transparent,
                                          width: 1))),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "Overview",
                                  style: GoogleFonts.manrope(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selec = 1;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              height: MediaQuery.of(context).size.height / 15,
                              width: MediaQuery.of(context).size.width / 2.3,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: (selec == 1)
                                              ? Color.fromRGBO(229, 252, 127, 1)
                                              : Colors.transparent,
                                          width: 1))),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "Activity",
                                  style: GoogleFonts.manrope(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                      child: Column(children: <Widget>[
                        new AnimatedSize(
                            duration: const Duration(milliseconds: 400),
                            child: new ConstrainedBox(
                                constraints: widget.isExpanded
                                    ? new BoxConstraints()
                                    : new BoxConstraints(maxHeight: 60.0),
                                child: new Text(
                                  widget.text,
                                  style: GoogleFonts.manrope(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                ))),
                        widget.isExpanded
                            ? new ConstrainedBox(
                                constraints: new BoxConstraints())
                            : GestureDetector(
                                onTap: () {
                                  setState(() => widget.isExpanded = true);
                                },
                                child: new Container(
                                  child: Text(
                                    "Read More",
                                    style: GoogleFonts.manrope(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              )
                      ]),

                      /*Text(
                        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate",
                        style: GoogleFonts.manrope(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),*/
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, top: 20, bottom: 10),
                          child: Text(
                            "Checklist",
                            style: GoogleFonts.manrope(
                                fontSize: 15, color: Colors.grey),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 3,
                          child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, right: 20, left: 20),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 12,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[900],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: (index % 2 == 0)
                                                ? Icon(Icons.check_circle,
                                                    color: Colors.green)
                                                : Icon(Icons.circle_outlined,
                                                    color: Colors.grey)),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            "Task $index",
                                            style: GoogleFonts.manrope(
                                                color: Colors.grey),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

class _ExpandableTextState extends State<Dashboard>
    with TickerProviderStateMixin<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new AnimatedSize(
          vsync: this,
          duration: const Duration(milliseconds: 500),
          child: new ConstrainedBox(
              constraints: widget.isExpanded
                  ? new BoxConstraints()
                  : new BoxConstraints(maxHeight: 50.0),
              child: new Text(
                widget.text,
                softWrap: true,
                overflow: TextOverflow.fade,
              ))),
      widget.isExpanded
          ? new ConstrainedBox(constraints: new BoxConstraints())
          : new ElevatedButton(
              child: const Text('...'),
              onPressed: () => setState(() => widget.isExpanded = true))
    ]);
  }
}
