import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeedf2),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 40),
          Text(
            "Searching for",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Color(0xff3b3b3b),
            ),
          ),
          Text(
            "Flights and Hotels?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Color(0xff3b3b3b),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // container holding 2 selects
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xffeeedf2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text("AirLines tickets"),
                  ),
                ),
                Container(
                  height: 50,
                  width: 191,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text("Hotel Bookings"),
                  ),
                ),
              ],
            ),
          ),
          // depature and arrival
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            height: 60,
            child: Row(
              children: [
                Icon(
                  Icons.flight_takeoff,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Departure")
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            height: 60,
            child: Row(
              children: [
                Icon(
                  Icons.flight_land,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Arrival")
              ],
            ),
          ),
          // find tickets
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
            height: 60,
            child: Center(
              child: Text(
                "Find Flights",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
          ),
          // upcoming see alll
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upcoming Flights",
                style: TextStyle(
                    fontSize: 21,
                    color: Color(0xff3b3b3b),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "View all",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.indigo,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          // lowersection
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                height: 400,
                width: 161,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/sit.jpg")),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "20% DISCOUNT on esrly booking of this flight, dont miss out on this chance ",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.indigo,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              // two on the right
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        width: 190,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color(0xff3a8888),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount \nfor survey",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Take the survey about our services and get discount",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Positioned(
                        top: -40,
                        right: -25,
                        child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: Color(0xff189999),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 190,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color(0xffec6545),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Safe Travels",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(text: "Plane  "),
                          TextSpan(text: "flight  "),
                          TextSpan(text: "plane"),
                        ]))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
